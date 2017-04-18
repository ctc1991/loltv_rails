class YoukuController < ApplicationController

  def play
  	@youkuVideoUrl = "http://pl-ali.youku.com/playlist/m3u8?vid=" << "#{params[:id]}" << "&sid=347542915789012873822&ctype=12&ts=1475856735&type=mp4"
    @result = get("https://openapi.youku.com/v2/videos/show.json?client_id=b10ab8588528b1b1&video_id=" << "#{params[:id]}")
    @title 	= @result["title"]
    # default cover
    @failedImg = "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1491989457703&di=a42d6efc9b98f21779f30dc74349d597&imgtype=0&src=http%3A%2F%2Fpic.58pic.com%2F58pic%2F14%2F75%2F15%2F31v58PICZdW_1024.png"

    uid 		= @result["user"]["link"][32...@result["user"]["link"].length-5]
    @user 	= get("https://mapi.channel.youku.com/feed.stream/show/get_channel_owner_info.json?uid=" << "#{uid}")
    @videos = get("https://mapi.channel.youku.com/feed.stream/show/get_channel_owner_videos.json?uid="<< "#{uid}" << "&pl=10&pg=1")["data"]["videos"]
  end

end
