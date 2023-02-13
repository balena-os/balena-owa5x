# v2.107.5
## (2023-01-09)

# v2.111.2
## (2023-02-13)


<details>
<summary> Update layers/meta-balena to 3e652503831c517ed60bc838c250d2910f2de8fe [Renovate Bot] </summary>

> ## meta-balena-2.111.2
> ### (2023-02-13)
> 
> * docs: add section for sb/fde opt-in [Joseph Kogut]
> 

</details>

# v2.111.1+rev1
## (2023-02-13)

* Agreed changes in discussion PR22. [Alvaro Guzman]

# v2.111.1
## (2023-02-13)


<details>
<summary> Update layers/meta-balena to ad77fa3dacfa32044deb80c2266e3c2d8e1e13dd [Renovate Bot] </summary>

> ## meta-balena-2.111.1
> ### (2023-02-13)
> 
> * resin-init-flasher: do not report progress if unprovisioned [Alex Gonzalez]
> * resin-init-flasher: check splash configuration exists before copying [Alex Gonzalez]
> * resin-init-flasher: Move configuration data definitions to config file [Alex Gonzalez]
> 

</details>

# v2.111.0
## (2023-02-11)


<details>
<summary> Update layers/meta-balena to 18d3baaee23803f2b15e45c1ce3b1446e7a87eb1 [Renovate Bot] </summary>

> ## meta-balena-2.111.0
> ### (2023-02-11)
> 
> 
> <details>
> <summary> Update balena-supervisor to v14.8.0 [Renovate Bot] </summary>
> 
>> ### balena-supervisor-14.8.0
>> #### (2023-02-10)
>> 
>> * Remove dependent devices content in codebase [Christina Ying Wang]
>> 
> 
> </details>
> 
> 

</details>

# v2.110.4
## (2023-02-10)


<details>
<summary> Update layers/meta-balena to 152fe5b0fde438279bf0bc05e8f51d2cafb28fc0 [Renovate Bot] </summary>

> ## meta-balena-2.110.4
> ### (2023-02-10)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 589449d [Renovate Bot] </summary>
> 
>> ### leviathan-2.19.0
>> #### (2023-02-10)
>> 
>> * Update core/contracts digest to 35f4223 [Renovate Bot]
>> 
> 
> </details>
> 
> 

</details>

# v2.110.3+rev1
## (2023-02-10)


<details>
<summary> Update contracts to 35f42232b2c24e9a43c4b0e171f9644b1b12a686 [Renovate Bot] </summary>

> ## contracts-2.0.43
> ### (2023-02-10)
> 
> * Add Fedora 37 (latest) and 38 [Trong Nghia Nguyen]
> * Add Python v3.11.2 and v3.10.10 [Trong Nghia Nguyen]
> 

</details>

# v2.110.3
## (2023-02-09)


<details>
<summary> Update layers/meta-balena to 2c4c90350f1748a5b8d11441d84023c65069f01d [Renovate Bot] </summary>

> ## meta-balena-2.110.3
> ### (2023-02-09)
> 
> * os-helpers: remove shebangs as these are not meant to be executed [Alex Gonzalez]
> * resindataexpander: Fix formatting [Alex Gonzalez]
> * resin-init-flasher: Extract code that resolved internal device [Alex Gonzalez]
> * os-helpers-fs: Add shared code from resin-init-flasher [Alex Gonzalez]
> * resin-init-flasher: remove unused variable [Alex Gonzalez]
> * resin-init-flasher: Use the default for the external boot partition mount [Alex Gonzalez]
> * resin-init-flasher: search for images to copy instead of hardcoding paths [Alex Gonzalez]
> * resin-init-flasher: Do not  hardcode the path to the internal boot device [Alex Gonzalez]
> * resin-init-flasher: remove systemd dependency [Alex Gonzalez]
> * resin-init-flasher: Do not hardcode path to the raw image [Alex Gonzalez]
> * initrdscript: prepare: expose path to initramfs logs [Alex Gonzalez]
> * initrdscript: resindataexpander: skip for flasher images [Alex Gonzalez]
> * docs: add initramfs overview [Alex Gonzalez]
> 
> ## meta-balena-2.110.2
> ### (2023-02-07)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 4f63a2d [Renovate Bot] </summary>
> 
>> ### leviathan-2.18.1
>> #### (2023-02-07)
>> 
>> * patch: Automate docs deployment with Flowzone [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.18.0
>> #### (2023-02-07)
>> 
>> * Update core/contracts digest to 7797750 [Renovate Bot]
>> 
>> ### leviathan-2.17.6
>> #### (2023-02-07)
>> 
>> * patch: Update client lockfile [Vipul Gupta (@vipulgupta2048)]
>> * patch: Update core lockfile [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.17.5
>> #### (2023-02-06)
>> 
>> * patch: Update core dependencies [Vipul Gupta (@vipulgupta2048)]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.110.1
> ### (2023-02-07)
> 
> * renovate: Include to and from versions for supervisor and engine [Kyle Harding]
> 
> ## meta-balena-2.110.0
> ### (2023-02-07)
> 
> * Update balena-supervisor to v14.7.1 [Renovate Bot]
> 
> ## meta-balena-2.109.2
> ### (2023-02-07)
> 
> * efitools: backport patch to fix build failure [Joseph Kogut]
> * efitools: fix cross-compilation on arm [Joseph Kogut]
> * Only include EFI tools if the machine feature is defined [Alex Gonzalez]
> 
> ## meta-balena-2.109.1
> ### (2023-02-06)
> 
> * resin-extra-udev-rules: Remove after all device types have been updated [Alex Gonzalez]
> 
> ## meta-balena-2.109.0
> ### (2023-02-05)
> 
> * kernel-balena: Remove apparmor support [Alex Gonzalez]
> 
> ## meta-balena-2.108.39
> ### (2023-02-03)
> 
> * flasher: handle user mode system w/out secure boot [Joseph Kogut]
> * flasher: fix keys not enrolling with secure boot enabled [Joseph Kogut]
> * flasher: fix secure boot setup with enrolled keys [Joseph Kogut]
> 
> ## meta-balena-2.108.38
> ### (2023-02-03)
> 
> 
> <details>
> <summary> Update leviathan to v2.17.4 [Kyle Harding] </summary>
> 
>> ### leviathan-2.17.4
>> #### (2023-01-28)
>> 
>> * patch: Upgrade client to v18 [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.17.3
>> #### (2023-01-26)
>> 
>> * patch: Update client dependencies [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.17.2
>> #### (2023-01-19)
>> 
>> * chore(deps): update alpine docker tag to v3.17.1 [renovate[bot]]
>> 
>> ### leviathan-2.17.1
>> #### (2023-01-19)
>> 
>> * patch: Convert balenaCloudInteractor to JS [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.17.0
>> #### (2023-01-19)
>> 
>> * chore(deps): update dependency json5 [security] [renovate[bot]]
>> 
>> ### leviathan-2.16.1
>> #### (2023-01-19)
>> 
>> * split swtpm service into separate compose file [Joseph Kogut]
>> 
>> ### leviathan-2.16.0
>> #### (2023-01-18)
>> 
>> * chore(deps): update core/contracts digest to 8392bb2 [renovate[bot]]
>> 
>> ### leviathan-2.15.1
>> #### (2023-01-17)
>> 
>> * patch: Drop config NPM package [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.15.0
>> #### (2023-01-14)
>> 
>> * chore(deps): update dependency ansi-regex [security] [renovate[bot]]
>> 
>> ### leviathan-2.14.9
>> #### (2023-01-05)
>> 
>> * compose: qemu: add swtpm service [Joseph Kogut]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.108.37
> ### (2023-02-02)
> 
> * Update balena-engine to v20.10.26 [Renovate Bot]
> 
> ## meta-balena-2.108.36
> ### (2023-02-02)
> 
> * flasher: remove duplicate EFI boot entries [Joseph Kogut]
> * flasher: create EFI boot entry [Joseph Kogut]
> * common: os-helpers-fs: fix get_dev_path_from_label w/ luks [Joseph Kogut]
> * flasher: make secure boot opt-in [Joseph Kogut]
> * flasher: ensure image is signed before enrollment [Joseph Kogut]
> * flasher: refactor secure boot block [Joseph Kogut]
> 
> ## meta-balena-2.108.35
> ### (2023-02-01)
> 
> * renovate: Add regex manager for balena-engine [Kyle Harding]
> 
> ## meta-balena-2.108.34
> ### (2023-02-01)
> 
> * docs: Add secure boot and disk encryption overview [Alex Gonzalez]
> * hostapp-update-hooks: Fail if new keys are used [Alex Gonzalez]
> * resin-init-flasher: In setupmode program new keys [Alex Gonzalez]
> 
> ## meta-balena-2.108.33
> ### (2023-02-01)
> 
> * tests: os: skip persistent logging test for pi0 [rcooke-warwick]
> 
> ## meta-balena-2.108.32
> ### (2023-02-01)
> 
> * efitools: Allow builds for ARM architecture [Alex Gonzalez]
> 
> ## meta-balena-2.108.31
> ### (2023-02-01)
> 
> * rollback-health: bind-mount EFI partition when split from boot [Michal Toman]
> 
> ## meta-balena-2.108.30
> ### (Invalid date)
> 
> * redsocks: Deploy README and sample configration file [Alexandru Costache]
> * recipes-bsp/u-boot: Import extra uboot environment from scanned devices [Alexandru Costache]
> 
> ## meta-balena-2.108.29
> ### (2023-01-28)
> 
> * bluez: Update to v5.66 [Alex Gonzalez]
> 
> ## meta-balena-2.108.28
> ### (2023-01-26)
> 
> * patch: Update balenaOS docs title [Vipul Gupta (@vipulgupta2048)]
> 
> ## meta-balena-2.108.27
> ### (2023-01-20)
> 
> * tests: os: fix tests that use glider on rpi0 [rcooke-warwick]
> 
> ## meta-balena-2.108.26
> ### (2023-01-20)
> 
> * Enable back connectivity check in NetworkManager [Zahari Petkov]
> 
> ## meta-balena-2.108.25
> ### (2023-01-18)
> 
> * tests: os: add basic SB/FDE tests [Joseph Kogut]
> 
> ## meta-balena-2.108.24
> ### (2023-01-18)
> 
> * networkmanager: Make iptables wait for xtables.lock [Zahari Petkov]
> 
> ## meta-balena-2.108.23
> ### (2023-01-16)
> 
> * balena-keys: rebuild if keys change [Alex Gonzalez]
> * classes: sign-*: resign if keys change [Alex Gonzalez]
> 
> ## meta-balena-2.108.22
> ### (2023-01-16)
> 
> * workflows: esr: use semver compatible versions [Alex Gonzalez]
> 
> ## meta-balena-2.108.21
> ### (2023-01-14)
> 
> * efitools: Package lock down EFI image into its own package [Alex Gonzalez]
> 
> ## meta-balena-2.108.20
> ### (2023-01-12)
> 
> * workflows: meta-balena-esr: Fix version calculation [Alex Gonzalez]
> 

</details>

# v2.108.19+rev5
## (2023-02-09)


<details>
<summary> Update balena-yocto-scripts to fe6beafdcfa7406b20257cf67a6b74cd8f59142f [Renovate Bot] </summary>

> ## balena-yocto-scripts-1.19.23
> ### (2023-01-28)
> 
> * balena-generate-ami: increase import snapshot timeout [Alex Gonzalez]
> * balena-generate-ami: remove s3 temporary image if snapshot import times out [Alex Gonzalez]
> * balena-generate-ami: match instance type with image type [Alex Gonzalez]
> * balena-generate-ami: fix linter warnings [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.19.22
> ### (2023-01-25)
> 
> * balena-generate-ami: allow for staging deployments [Alex Gonzalez]
> * jenkins_generate_ami: allow for staging deployment [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.19.21
> ### (2023-01-19)
> 
> * balene-generate-ami: remove key name [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.19.20
> ### (2023-01-18)
> 
> * jenkins_generate_ami: default to pull cloud-config apps from balena_os [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.19.19
> ### (2023-01-14)
> 
> * balena-generate-ami: do not remove AMI snapshot [Alex Gonzalez]
> * jenkins_generate_ami: use balena_os tokens instead of org specific token [Alex Gonzalez]
> * jenkins_build: respect the preserve build flag [Alex Gonzalez]
> * balena-generate-ami: cleanup images after deployment [Alex Gonzalez]
> * balena-generate-ami: test image before making it public [Alex Gonzalez]
> 

</details>

# v2.108.19+rev4
## (2023-02-09)


<details>
<summary> Update contracts to 79998a238ca981b890dfb9206f50bde2d367ff7c [Renovate Bot] </summary>

> ## contracts-2.0.42
> ### (2023-02-06)
> 
> * Add golang v1.20 [Trong Nghia Nguyen]
> * Add node v19.6.0 and v18.14.0 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.41
> ### (2023-02-01)
> 
> * Add support for latest dotnet releases v7 (7.0.102) and v6 (6.0.113) [Trong Nghia Nguyen]
> * Add node v19.5.0 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.40
> ### (2023-01-18)
> 
> * Add golang v1.19.5 and v1.18.10 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.39
> ### (2023-01-12)
> 
> * hw.device-type: Add Radxa CM3 on Raspberry Pi Compute Module 4 IO Board [Florin Sarbu]
> 

</details>

# v2.108.19+rev3
## (2023-01-26)

* add meta-perl to bblayers.conf [Alex Gonzalez]

# v2.108.19+rev2
## (2023-01-12)

* Add ESR workflow [Alex Gonzalez]

# v2.108.19+rev1
## (2023-01-11)

* NAND bootloader must show no traces [Alvaro Guzman]

# v2.108.19
## (2023-01-10)


<details>
<summary> Update layers/meta-balena to 707ed18ca071fb7d7d557e0774f9f479323892af [renovate[bot]] </summary>

> ## meta-balena-2.108.19
> ### (2023-01-10)
> 
> * redsocks: Increase maximum number of open files [Alex Gonzalez]
> 

</details>

# v2.108.18
## (2023-01-10)


<details>
<summary> Update layers/meta-balena to 7b8d9a8b591487aefcdcd522d385ec14abaa1be6 [renovate[bot]] </summary>

> ## meta-balena-2.108.18
> ### (2023-01-09)
> 
> * Revert "flasher: output logs to serial console" [Joseph Kogut]
> 

</details>

# v2.108.17
## (2023-01-09)


<details>
<summary> Update layers/meta-balena to 8347887ab69018c1e4bcf0a7aecbf6faf85af2bd [renovate[bot]] </summary>

> ## meta-balena-2.108.17
> ### (2023-01-09)
> 
> * Update balena-os/balena-supervisor to v14.4.10 [renovate[bot]]
> 
> ## meta-balena-2.108.16
> ### (2023-01-09)
> 
> * balena-supervisor: Set the supervisor package version [Kyle Harding]
> 
> ## meta-balena-2.108.15
> ### (2023-01-05)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to e23c1bb [renovate[bot]] </summary>
> 
>> ### leviathan-2.14.8
>> #### (2023-01-05)
>> 
>> * chore(deps): update dependency eslint-config-standard to 17.0.0 [renovate[bot]]
>> 
>> ### leviathan-2.14.7
>> #### (2023-01-05)
>> 
>> * worker: Deprecate the WORKER_RELEASE env var [Kyle Harding]
>> 
>> ### leviathan-2.14.6
>> #### (2023-01-05)
>> 
>> * e2e: Switch from rpi4 to rpi3 for e2e tests [Kyle Harding]
>> * core: Increase the default timeout for worker connections to 30s [Kyle Harding]
>> 
>> ### leviathan-2.14.5
>> #### (2023-01-04)
>> 
>> * renovate: Disable automerge for major and minor updates [Kyle Harding]
>> 
>> ### leviathan-2.14.4
>> #### (2023-01-04)
>> 
>> * chore(deps): update dependency typedoc to 0.23.23 [renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.108.14
> ### (2023-01-04)
> 
> * tests: os: chrony: disable NTP w/ dnsmasq dbus API [Joseph Kogut]
> 
> ## meta-balena-2.108.13
> ### (2023-01-04)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 44dceb4 [renovate[bot]] </summary>
> 
>> ### leviathan-2.14.3
>> #### (2023-01-04)
>> 
>> * chore(deps): update dependency eslint to 8.31.0 [renovate[bot]]
>> 
> 
> </details>
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 4383482 [renovate[bot]] </summary>
> 
>> ### leviathan-2.14.3
>> #### (2023-01-04)
>> 
>> * chore(deps): update dependency eslint to 8.31.0 [renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.108.12
> ### (2023-01-04)
> 
> * tests/hup: Avoid an old engine bug when pulling multiarch images on rpi [Kyle Harding]
> 
> ## meta-balena-2.108.11
> ### (2023-01-03)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to d3485ab [renovate[bot]] </summary>
> 
>> ### leviathan-2.13.0
>> #### (2023-01-03)
>> 
>> * Revert "minor: Add @balena/leviathan-test-helpers package" [Kyle Harding]
>> 
>> ### leviathan-2.12.4
>> #### (Invalid date)
>> 
>> * chore(deps): update dependency eslint-plugin-standard to 4.1.0 [renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.108.10
> ### (Invalid date)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 7d6326d [renovate[bot]] </summary>
> 
>> ### leviathan-2.12.3
>> #### (Invalid date)
>> 
>> * chore(deps): update dependency eslint-plugin-node to 11.1.0 [renovate[bot]]
>> 
>> ### leviathan-2.12.2
>> #### (2022-12-29)
>> 
>> * Run out-of-band e2e tests after Flowzone passes [Kyle Harding]
>> 
>> ### leviathan-2.12.1
>> #### (2022-12-29)
>> 
>> * chore(deps): update dependency eslint-plugin-jsdoc to 39.6.4 [renovate[bot]]
>> 
>> ### leviathan-2.12.0
>> #### (2022-12-29)
>> 
>> * chore(deps): update core/contracts digest to 4698e4e [renovate[bot]]
>> 
>> ### leviathan-2.11.9
>> #### (2022-12-29)
>> 
>> * chore(deps): update dependency balena-os/leviathan-worker to 2.6.13 [renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.108.9
> ### (2022-12-29)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 1dcb432 [renovate[bot]] </summary>
> 
>> ### leviathan-2.11.8
>> #### (2022-12-28)
>> 
>> * chore(deps): update dependency eslint-config-prettier to 8.5.0 [renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.108.8
> ### (2022-12-28)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to e09fae4 [renovate[bot]] </summary>
> 
>> ### leviathan-2.11.7
>> #### (2022-12-28)
>> 
>> * renovate: Remove v prefix from leviathan-worker github-tags [Kyle Harding]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.108.7
> ### (2022-12-28)
> 
> * tests: os: fix modem test teardown [rcooke-warwick]
> 
> ## meta-balena-2.108.6
> ### (2022-12-27)
> 
> * flasher: output logs to serial console [Joseph Kogut]
> 
> ## meta-balena-2.108.5
> ### (2022-12-21)
> 
> * Engine healthcheck: deal with empty uuid file [Leandro Motta Barros]
> 
> ## meta-balena-2.108.4
> ### (2022-12-20)
> 
> * distro: For OS development, enable serial console [Alex Gonzalez]
> 
> ## meta-balena-2.108.3
> ### (2022-12-20)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to f06d285 [renovate[bot]] </summary>
> 
>> ### leviathan-2.11.6
>> #### (2022-12-16)
>> 
>> * Fix renovate extends syntax to include balena-io config [Kyle Harding]
>> 
>> ### leviathan-2.11.5
>> #### (2022-12-16)
>> 
>> * renovate: Inherit settings from balena-io/renovate-config [Kyle Harding]
>> 
>> ### leviathan-2.11.4
>> #### (2022-12-16)
>> 
>> * add logging and timeout to balena push [rcooke-warwick]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.108.2
> ### (2022-12-19)
> 
> * Update balena-os/balena-supervisor to v14.4.9 [renovate[bot]]
> 
> ## meta-balena-2.108.1
> ### (2022-12-18)
> 
> * common: signing: improve debug output on failure [Joseph Kogut]
> 
> ## meta-balena-2.108.0
> ### (2022-12-16)
> 
> * Update NetworkManager to 1.40.4 [Zahari Petkov]
> 
> ## meta-balena-2.107.40
> ### (2022-12-16)
> 
> * Add upstream resolvconf 1.91 recipe for kirkstone [Zahari Petkov]
> 
> ## meta-balena-2.107.39
> ### (2022-12-16)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to f44bbbd [renovate[bot]] </summary>
> 
>> ### leviathan-2.11.3
>> #### (2022-12-16)
>> 
>> * Disable renovate config for now [Kyle Harding]
>> * Restore worker release env var [Kyle Harding]
>> 
>> ### leviathan-2.11.2
>> #### (2022-12-15)
>> 
>> * Update Node.js to v12.22.12 [Renovate Bot]
>> 
>> ### leviathan-2.11.1
>> #### (2022-12-15)
>> 
>> * Remove dependabot as renovate is enabled in balena-io/renovate-config [Kyle Harding]
>> * Pin worker to a release and add renovate regex template [Kyle Harding]
>> 
>> ### leviathan-2.11.0
>> #### (2022-12-15)
>> 
>> * Update core/contracts digest to 08f029b [Renovate Bot]
>> 
>> ### leviathan-2.10.12
>> #### (2022-12-15)
>> 
>> * Revert "Avoid conflicting docker subnets" [Vipul Gupta]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.107.38
> ### (2022-12-16)
> 
> * Update balena-os/balena-supervisor to v14.4.8 [renovate[bot]]
> 
> ## meta-balena-2.107.37
> ### (2022-12-15)
> 
> * tests: cloud: simplify apps to speedup suite [rcooke-warwick]
> 
> ## meta-balena-2.107.36
> ### (2022-12-15)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 48ffd13 [renovate[bot]] </summary>
> 
>> ### leviathan-2.10.11
>> #### (2022-12-14)
>> 
>> * Avoid conflicting docker networks [Kyle Harding]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.107.35
> ### (2022-12-15)
> 
> * patch: Add default debug object to test config [Vipul Gupta (@vipulgupta2048)]
> 
> ## meta-balena-2.107.34
> ### (2022-12-14)
> 
> * initrdscripts: Wait for udev processing to complete when unlocking LUKS devices [Michal Toman]
> 
> ## meta-balena-2.107.33
> ### (2022-12-14)
> 
> * tests: hup: clean up inactive partition pre hup [rcooke-warwick]
> 
> ## meta-balena-2.107.32
> ### (2022-12-14)
> 
> * tests/cloud: Increase the wait time for services to start [Kyle Harding]
> 
> ## meta-balena-2.107.31
> ### (2022-12-14)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 27b78a4 [renovate[bot]] </summary>
> 
>> ### leviathan-2.10.10
>> #### (2022-12-13)
>> 
>> * Enable external contributions via flowzone [Kyle Harding]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.107.30
> ### (2022-12-13)
> 
> * extra-udev-rules: Update teensy.rules [Alex Gonzalez]
> * extra-udev-rules: Rename recipe [Alex Gonzalez]
> 
> ## meta-balena-2.107.29
> ### (2022-12-13)
> 
> * balena-image-initramfs: disable redundant compression [Joseph Kogut]
> 
> ## meta-balena-2.107.28
> ### (2022-12-12)
> 
> * initrdscripts: Only unlock LUKS partitions on the OS drive [Michal Toman]
> 
> ## meta-balena-2.107.27
> ### (2022-12-12)
> 
> * chrony: disable reverse dns lookups in healthcheck [Ken Bannister]
> 
> ## meta-balena-2.107.26
> ### (2022-12-12)
> 
> * connectivity: Add linux firmware for iwlwifi 9260 [Alex Gonzalez]
> 
> ## meta-balena-2.107.25
> ### (2022-12-11)
> 
> * image_types_balena: fix inconsistency with flasher image partition naming [Alex Gonzalez]
> 
> ## meta-balena-2.107.24
> ### (2022-12-09)
> 
> * Update balena-os/balena-supervisor to v14.4.6 [renovate[bot]]
> 
> ## meta-balena-2.107.23
> ### (2022-12-09)
> 
> * patch: Add product documentation [Vipul Gupta (@vipulgupta2048)]
> 
> ## meta-balena-2.107.22
> ### (2022-12-09)
> 
> * tests: os: fsck: make compatible with old yocto releaes [rcooke-warwick]
> 
> ## meta-balena-2.107.21
> ### (2022-12-08)
> 
> * tests/connectivity: Run the proxy tests with the actual redsocks uid of the DUT [Florin Sarbu]
> 
> ## meta-balena-2.107.20
> ### (2022-12-07)
> 
> * kernel-balena: enable zstd compression [Joseph Kogut]
> 
> ## meta-balena-2.107.19
> ### (2022-12-06)
> 
> * image_types_balena: generate bmap file [Joseph Kogut]
> * flasher: write disk image skipping sparse blocks [Joseph Kogut]
> * image_types_balena: create sparse disk image [Joseph Kogut]
> 
> ## meta-balena-2.107.18
> ### (2022-12-04)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to fe4d6a1 [renovate[bot]] </summary>
> 
>> ### leviathan-2.10.9
>> #### (2022-12-02)
>> 
>> * Revert "docker-compose: stop using the default docker bridge" [Kyle Harding]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.107.17
> ### (2022-12-02)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to de97fa2 [renovate[bot]] </summary>
> 
>> ### leviathan-2.10.8
>> #### (Invalid date)
>> 
>> * patch: Improve archivelogs journalctl command [Vipul Gupta (@vipulgupta2048)]
>> * core: Reduce to 30 the retries number when trying to get the IP address of the DUT [Florin Sarbu]
>> 
>> ### leviathan-2.10.7
>> #### (Invalid date)
>> 
>> * docker-compose: stop using the default docker bridge [Alex Gonzalez]
>> 
>> ### leviathan-2.10.6
>> #### (2022-11-29)
>> 
>> * os/balenaos: Remove hidden attribute from DUT wireless connection file [Alexandru Costache]
>> 
>> ### leviathan-2.10.5
>> #### (2022-11-29)
>> 
>> * patch: Add debug: unstable to docs [Vipul Gupta (@vipulgupta2048)]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.107.16
> ### (2022-12-01)
> 
> * Refactor and clean up the purge data tests [Kyle Harding]
> 
> ## meta-balena-2.107.15
> ### (2022-12-01)
> 
> * Updated CBS Docs Updated link to the CDS Product Repo [Ryan H]
> 
> ## meta-balena-2.107.14
> ### (Invalid date)
> 
> * test: os: fix search for active interface [rcooke-warwick]
> 
> ## meta-balena-2.107.13
> ### (2022-11-29)
> 
> * balena-image-flasher: Include LUKS variant of GRUB config with FDE in place [Michal Toman]
> 
> ## meta-balena-2.107.12
> ### (2022-11-28)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 61016ad [renovate[bot]] </summary>
> 
>> ### leviathan-2.10.4
>> #### (2022-11-25)
>> 
>> * bump contracts to 2.0.27 [rcooke-warwick]
>> 
>> ### leviathan-2.10.3
>> #### (2022-11-24)
>> 
>> * On Apple Silicon we should install balena CLI via npm [Kyle Harding]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.107.11
> ### (2022-11-25)
> 
> * add os testing docs [rcooke-warwick]
> 
> ## meta-balena-2.107.10
> ### (2022-11-25)
> 
> * balena-image.bb: Include bits for LUKS when FDE is enabled [Michal Toman]
> 
> ## meta-balena-2.107.9
> ### (2022-11-24)
> 
> * resin-init-flasher: Fix double /dev/ prefix when encrypting partitions [Michal Toman]
> * grub-conf: fix partition indexes in LUKS config [Michal Toman]
> * os-helpers-fs: add dependency on parted [Michal Toman]
> * hostapp-update-hooks: use stage2 bootloader GRUB config when using LUKS [Michal Toman]
> * balena-rollback: Fix partition index detection for luks devices [Michal Toman]
> * balena-rollback: Find following symbolic links [Alex Gonzalez]
> * hostapp-update-hooks: Find following symlinks [Alex Gonzalez]
> * hostapp-update-hooks: Fix partition index detection for luks devices [Alex Gonzalez]
> 
> ## meta-balena-2.107.8
> ### (2022-11-24)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to bdf8eb2 [renovate[bot]] </summary>
> 
>> ### leviathan-2.10.2
>> #### (2022-11-23)
>> 
>> * add high level architecture overview [rcooke-warwick]
>> 
>> ### leviathan-2.10.1
>> #### (2022-11-23)
>> 
>> * Add conditions for Apple Silicon workstations [Kyle Harding]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.107.7
> ### (2022-11-23)
> 
> * tests: ssh-auth: rework local authentication with cloud keys to work in testbots [Alex Gonzalez]
> * ssh-auth: do not use a separate custom key [Alex Gonzalez]
> * Revert "test: ssh-auth: fix test cases using custom keys" [Alex Gonzalez]
> 
> ## meta-balena-2.107.6
> ### (2022-11-22)
> 
> * Update balena-os/balena-supervisor to v14.4.4 [renovate[bot]]
> 

</details>

# v2.107.5+rev1
## (2023-01-09)


<details>
<summary> Update contracts to cbc450a40296e716e50344b3d625fb9a9b6975f6 [renovate[bot]] </summary>

> ## contracts-2.0.38
> ### (2023-01-07)
> 
> * Forecr DSBOARD NX2 Xavier NX eMMC: Add community device-type [Alexandru Costache]
> 
> ## contracts-2.0.37
> ### (2023-01-07)
> 
> * Add node v18.13.0 and v19.4.0 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.36
> ### (2022-12-22)
> 
> * Fix owa5x slug [Trong Nghia Nguyen]
> 
> ## contracts-2.0.35
> ### (2022-12-20)
> 
> * hw.device-type: Add Owasys owa5X device [Alvaro Guzman]
> 
> ## contracts-2.0.34
> ### (2022-12-16)
> 
> * Flowzone: Allow external contributions [Florin Sarbu]
> 
> ## contracts-2.0.33
> ### (2022-12-16)
> 
> * Flowzone: Use inherited secrets [Florin Sarbu]
> 
> ## contracts-2.0.32
> ### (2022-12-15)
> 
> * Add node v19.3.0 v16.19.0 and v14.21.2 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.31
> ### (2022-12-10)
> 
> * Add partials for dotnet v7 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.30
> ### (2022-12-09)
> 
> * Add support for Alpine Linux v3.17 [Trong Nghia Nguyen]
> * Add dotnet v7, update v6.x and v3.x to latest versions [Trong Nghia Nguyen]
> * Add Python v3.11.1 v3.10.9 v3.9.16 v3.8.16 and v3.7.16 [Trong Nghia Nguyen]
> * Add Golang v1.19.4 and v1.18.9 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.29
> ### (Invalid date)
> 
> * Add node v19.2.0 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.28
> ### (2022-11-09)
> 
> * Add node v18.12.1 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.27
> ### (2022-11-07)
> 
> * Add go v1.19.3 and v1.18.8 [Trong Nghia Nguyen]
> * Add node v19.0.1 v16.18.1 and v14.21.1 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.26
> ### (2022-11-01)
> 
> * Add Python v3.11.0 v3.10.8 v3.9.15 v3.8.15 and v3.7.15 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.25
> ### (2022-10-27)
> 
> * Fix incorrect partials in device type contracts [Micah Halter]
> 
> ## contracts-2.0.24
> ### (2022-10-27)
> 
> * Add node v18.12.0 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.23
> ### (2022-10-25)
> 
> * sw.os+hw.device-type: Add distro-config.tpl for jetson-agx-orin-devkit [Alexandru Costache]
> 
> ## contracts-2.0.22
> ### (2022-10-24)
> 
> * hw+device-type: Add jetson-agx-orin-devkit device type [Alexandru Costache]
> 
> ## contracts-2.0.21
> ### (2022-10-20)
> 
> * Add node v19.0.0 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.20
> ### (2022-10-14)
> 
> * Add Golang v1.19.2 and v1.18.7 [Trong Nghia Nguyen]
> * Add node v18.11.0 and v16.18.0 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.19
> ### (2022-10-05)
> 
> * Update dotnet 6.0 and 3.1 to latest version [Trong Nghia Nguyen]
> * Add Python v3.10.7 v3.9.14 v3.8.14 and v3.7.14 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.18
> ### (2022-10-05)
> 
> * Switch from balenaCI to flowzone [Trong Nghia Nguyen]
> 
> ## contracts-2.0.17
> ### (2022-09-27)
> 
> * Add node v18.9.1, v16.17.1 and v14.20.1 [Trong Nghia Nguyen]
> * Add Golang v1.19.1 and v1.18.6 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.16
> ### (2022-09-21)
> 
> * hw.device-type: Remove led for RockPro64 [Alexandru Costache]
> 
> ## contracts-2.0.15
> ### (2022-09-14)
> 
> * hw.device-type: Set LED to false for rockpi-4b [Alexandru Costache]
> 
> ## contracts-2.0.14
> ### (2022-09-06)
> 
> * Add node v18.8.0 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.13
> ### (2022-08-26)
> 
> * imx8mm-var-som: Add device type [Alexandru Costache]
> 
> ## contracts-2.0.12
> ### (2022-08-19)
> 
> * Add golang v1.19 and v1.18.5 [Trong Nghia Nguyen]
> * Add node v16.17.0 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.11
> ### (2022-08-10)
> 
> * generic-amd64: update logo to be vendor agnostic [Joseph Kogut]
> 
> ## contracts-2.0.10
> ### (2022-08-10)
> 
> * generic-amd64: disable private [Joseph Kogut]
> 
> ## contracts-2.0.9
> ### (2022-08-04)
> 
> * generic-amd64: match genericx86-64-ext connectivity [Joseph Kogut]
> * generic-amd64: update name to include GPT qualifier [Joseph Kogut]
> * genericx86-64-ext: update name to include MBR qualifier [Joseph Kogut]
> 
> ## contracts-2.0.8
> ### (2022-08-03)
> 
> * Update dotnet contract to latest v6.x and v3.x [Trong Nghia Nguyen]
> * Add node v18.7.0 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.7
> ### (2022-07-19)
> 
> * hw.device-type: fix tdpzu9 device name [Francois]
> 
> ## contracts-2.0.6
> ### (2022-07-17)
> 
> * hw.device-type: Add correct tdpzu9 board [Florin Sarbu]
> 
> ## contracts-2.0.5
> ### (2022-07-14)
> 
> * Add node v18.6.0 [Trong Nghia Nguyen]
> * Add golang v1.8.4 and v1.17.12 [Trong Nghia Nguyen]
> * Add node v18.5.0 v16.16.0 and v14.20.0 [Trong Nghia Nguyen]
> * Remove Debian Stretch as it is EOL [Trong Nghia Nguyen]
> 
> ## contracts-2.0.4
> ### (2022-06-21)
> 
> * Add libffi3.4 linked python binaries [Trong Nghia Nguyen]
> 
> ## contracts-2.0.3
> ### (2022-06-13)
> 
> * Add Python v3.10.5 and v3.9.13 [Trong Nghia Nguyen]
> * Add support for Alpine Linux 3.16 [Trong Nghia Nguyen]
> * Add support for Ubuntu Jammy and Kinetic [Trong Nghia Nguyen]
> 

</details>

<details>
<summary> Update balena-yocto-scripts to 56bb055d91481023a6b6cff92d61ebfffa884139 [renovate[bot]] </summary>

> ## balena-yocto-scripts-1.19.18
> ### (2023-01-09)
> 
> * balena-generate-ami: Enable TPM support on x86_64 only [Michal Toman]
> 
> ## balena-yocto-scripts-1.19.17
> ### (2022-12-23)
> 
> * jenkins_generate_ami: support using both live and installer images as AMIs [Alex Gonzalez]
> * balena-generate-ami: Enable nitroTPM support [Alex Gonzalez]
> * jenkins_build: add argument to build OS development images [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.19.16
> ### (2022-12-16)
> 
> * dockerfile: balena-push-env: update balena CLI version to v14.5.15 [Alex Gonzalez]
> * jenkins_generate_ami: add balena org for preloaded app [Alex Gonzalez]
> * jenkins_generate_ami: distinguish between staging and production [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.19.15
> ### (2022-12-16)
> 
> * workflows: add flowzone [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.19.14
> ### (2022-11-10)
> 
> * jenkins_generate_ami: use a different token [Alex Gonzalez]
> 

</details>

* Add renovate configuration [Alex Gonzalez]
