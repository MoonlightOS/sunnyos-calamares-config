

import QtQuick 2.0;
import calamares.slideshow 1.0;
import io.calamares.ui 1.0  // Calamares internals: Branding

Presentation
{
    id: presentation

    Timer {
        interval: 30000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    function onActivate() { }
    function onLeave() { }

    Rectangle {
        id: mybackground
        anchors.fill: parent
        color: Branding.styleString(Branding.SidebarBackground)
        z: -1
    }

    ImageSlide {
        src: "slide1.png"
    }

    ImageSlide {
        src: "slide2.png"
    }

    ImageSlide {
        src: "slide3.png"
    }

    ImageSlide {
        src: "slide4.png"
    }

    ImageSlide {
        src: "slide5.png"
    }

}