deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

OWA5X_FLASH = 'Insert USB STICK. Device will automatically boot from USB'
 
postProvisioningInstructions = [
        instructions.BOARD_SHUTDOWN
        instructions.REMOVE_INSTALL_MEDIA
        instructions.BOARD_REPOWER
]
 
module.exports =
        version: 1
        slug: 'owa5x'
        name: 'owa5x'
        arch: 'aarch64'
        state: 'released'
 
        stateInstructions:
                postProvisioning: postProvisioningInstructions
 
        instructions: [
                instructions.ETCHER_USB
                instructions.EJECT_USB
                instructions.FLASHER_WARNING
                OWA5X_FLASH
        ].concat(postProvisioningInstructions)

        gettingStartedLink:
                windows: 'http://docs.balena.io/owa5x/nodejs/getting-started/#adding-your-first-device'
                osx: 'http://docs.balena.io/owa5x/getting-started/#adding-your-first-device'
                linux: 'http://docs.balena.io/owa5x/getting-started/#adding-your-first-device'

        supportsBlink: true

        yocto:
                machine: 'owa5x'
                image: 'balena-image'
                fstype: 'balenaos-img'
                version: 'yocto-dunfell'
                deployArtifact: 'owa5x.balenaos.img'
                compressed: true

        options: [ networkOptions.group ]

        configuration:
                config:
                        partition:
                                primary: 1
                        path: '/config.json'

        initialization: commonImg.initialization
