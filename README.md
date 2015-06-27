# Running an RSF job using the Humble-RPi-plugin-RSF gem


The following code demontrates running a Ruby Scripting Format (RSF) job from within the Humble-RPi-plugin-RSF gem:

    require 'humble_rpi-plugin-rsf'

    s =<<EOF
    <?dynarex schema="keywords[title, tags]/keyword(topic, msg, conditions, job,hashtags)"?>
    title: SPS Keywords
    tags: sps keywords trigger jobs
    --+
    t: system
    m: (.*)
    j: //job:system http://a0.jamesrobertson.eu/qbx/r/sps.rsf

    m: ^(hello .*)
    j:  //job:speak http://a0.jamesrobertson.eu/qbx/r/espeak.rsf $1
    EOF

    dx = Dynarex.new
    dx.import s

    r = HumbleRPiPluginRsf.new settings: {lookup: dx}
    r.on_do_message 'hello James'

## Resources

* ?humble_rpi-plugin-rsf https://rubygems.org/gems/humble_rpi-plugin-rsf?

humblerpipluginrsf gem rsf spstriggerexecute
