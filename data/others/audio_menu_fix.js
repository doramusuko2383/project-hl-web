(function () {
    "use strict";

    var SUPPRESS_CLICK_MS = 1000;

    if (window.Howler) {
        Howler.autoSuspend = false;
    }

    function getKag() {
        return window.TYRANO && window.TYRANO.kag;
    }

    function resumeHowlerContext() {
        if (window.Howler) {
            Howler.autoSuspend = false;
            if (Howler.ctx && Howler.ctx.state === "suspended") {
                Howler.ctx.resume();
            }
        }
    }

    function resumeTitleAudioElement() {
        var audio = document.getElementById("hl-title-wind-audio");
        if (!audio || !audio.paused) return;
        audio.play().catch(function () {});
    }

    function isEndedNonLoopBgm(kag, howl) {
        if (!howl || howl._loop) return false;
        if (kag && kag.tmp && kag.tmp.is_bgm_play === true) return false;
        if (Array.isArray(howl._sounds)) {
            for (var i = 0; i < howl._sounds.length; i++) {
                if (howl._sounds[i] && howl._sounds[i]._ended === true) return true;
            }
        }
        return true;
    }

    function resumeKnownBgm() {
        var kag = getKag();
        resumeTitleAudioElement();
        if (window.__hlTitleWind && !window.__hlTitleWind.playing()) {
            window.__hlTitleWind.play();
        }
        if (!kag || !kag.tmp || !kag.tmp.map_bgm) return;
        Object.keys(kag.tmp.map_bgm).forEach(function (key) {
            var howl = kag.tmp.map_bgm[key];
            if (!howl || howl.playing && howl.playing()) return;
            if (isEndedNonLoopBgm(kag, howl)) return;
            try { howl.play(); } catch (e) {}
        });
    }

    function unlockAudio() {
        var kag = getKag();
        if (kag && !kag.tmp.ready_audio) kag.readyAudio();
        resumeHowlerContext();
        resumeKnownBgm();
    }

    function isMenuUiClick(event) {
        return $(event.target).closest(".button_menu, .layer_menu").length > 0;
    }

    function shouldSuppressScenarioClick(event) {
        if (isMenuUiClick(event)) return false;
        if (!window.__hlSuppressNextScenarioClick || Date.now() >= window.__hlSuppressNextScenarioClick) return false;
        return $(event.target).closest(".layer_event_click").length > 0;
    }

    document.addEventListener("pointerup", function (event) {
        if (!shouldSuppressScenarioClick(event)) return;
        event.stopImmediatePropagation();
        event.preventDefault();
        window.__hlSuppressNextScenarioClick = 0;
    }, true);

    document.addEventListener("click", function (event) {
        if (!shouldSuppressScenarioClick(event)) return;
        event.stopImmediatePropagation();
        event.preventDefault();
        window.__hlSuppressNextScenarioClick = 0;
    }, true);

    $(document).on("pointerdown.hlAudioUnlock mousedown.hlAudioUnlock click.hlAudioUnlock keydown.hlAudioUnlock touchstart.hlAudioUnlock", unlockAudio);
    $(window).on("focus.hlAudioUnlock pageshow.hlAudioUnlock", unlockAudio);
    $(document).on("visibilitychange.hlAudioUnlock", function () {
        if (document.visibilityState === "visible") unlockAudio();
    });

    var TITLE_CONFIRM_STATE_KEYS = [
        "is_strong_stop",
        "is_weak_stop",
        "is_wait",
        "is_stop",
        "is_click_text",
        "is_skip",
        "is_auto"
    ];

    function captureTitleConfirmState(kag) {
        var state = {};
        if (!kag || !kag.stat) return state;
        TITLE_CONFIRM_STATE_KEYS.forEach(function (key) {
            state[key] = kag.stat[key];
        });
        return state;
    }

    function restoreAfterTitleCancel(state) {
        var kag = getKag();
        if (!kag) return false;
        if (kag.stat) {
            TITLE_CONFIRM_STATE_KEYS.forEach(function (key) {
                if (Object.prototype.hasOwnProperty.call(state, key)) {
                    kag.stat[key] = state[key];
                }
            });
        }
        // Let Remodal perform its standard close sequence.  In particular, do
        // not rebuild menu/control visibility here: the confirmation is an
        // overlay, so cancelling it should leave the underlying UI untouched.
        window.__hlSuppressNextScenarioClick = Date.now() + SUPPRESS_CLICK_MS;
        unlockAudio();
        return false;
    }

    function goBackTitleWithConfirm(event) {
        if (!$(event.target).closest(".menu_back_title").length) return;
        event.stopImmediatePropagation();
        event.preventDefault();
        var kag = getKag();
        if (kag) kag.backTitle();
    }

    function installBackTitlePatch() {
        var kag = getKag();
        if (!kag || kag.__hlBackTitlePatched) return false;
        kag.__hlBackTitlePatched = true;
        kag.backTitle = function () {
            var stateBeforeConfirm = captureTitleConfirmState(getKag());
            unlockAudio();
            if ("appJsInterface" in window) {
                appJsInterface.finishGame();
                return;
            }
            if (typeof TyranoPlayer === "function") {
                webkit.messageHandlers.backHandler.postMessage("endgame");
                return;
            }
            $.confirm($.lang("go_title"), function () {
                var currentKag = getKag();
                if (window.__hlPrepareForTitle) window.__hlPrepareForTitle();
                currentKag.ftag.startTag("jump", { storage: "title.ks" });
            }, function () {
                return restoreAfterTitleCancel(stateBeforeConfirm);
            });
        };
        return true;
    }

    document.addEventListener("click", goBackTitleWithConfirm, true);

    if (!installBackTitlePatch()) {
        $(window).on("load.hlBackTitlePatch", installBackTitlePatch);
        var patchTimer = setInterval(function () {
            if (installBackTitlePatch()) clearInterval(patchTimer);
        }, 100);
        setTimeout(function () { clearInterval(patchTimer); }, 10000);
    }
}());
