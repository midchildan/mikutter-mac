# -*- coding: utf-8 -*-

Plugin.create(:macos_compatibility) do
  require "shellwords"

  ###########
  #  Sound  #
  ###########
  defsound(:afplay, "afplay") do |filename|
    if FileTest.exist?(filename) && FileTest.executable?("/usr/bin/afplay")
      bg_system("/usr/bin/afplay", filename)
    end
  end
  # set as default
  UserConfig[:sound_server] ||= :afplay

  ###################
  #  Notifications  #
  ###################
  if command_exist?("terminal-notifier")
    on_popup_notify do |user, text, &stop|
      SerialThread.new do
        begin
          command = notify_command(user, text)
          bg_system(*command)
        rescue => e
          error e
        end
      end
      stop.call
    end
  end

  def notify_command(user, text)
    metadata = {
      title: "mikutter",
      sender: "net.hachune.mikutter"
    }
    if user
      user_img = Gdk::WebImageLoader.local_path(user[:profile_image_url])
      metadata[:title] = "@#{user[:idname]} (#{user[:name]})"
      metadata[:contentImage] = user_img
    end
    text = text.to_s if text.is_a? Message
    metadata[:message] = text

    command = [
      "terminal-notifier",
      *metadata.map do |k,v|
        v = v.to_s
        ["-#{k}", "#{Shellwords.escape(v[0,1])}#{v[1..-1]}"]
      end.flatten
    ]
    command
  end

end
