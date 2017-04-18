class PandaController < ApplicationController

  def play
  	@result = get("https://api.m.panda.tv/ajax_get_liveroom_baseinfo?roomid=" << "#{params[:id]}")

  	@plflag = @result["data"]["info"]["videoinfo"]["plflag"].split("_").last
  	@room_key = @result["data"]["info"]["videoinfo"]["room_key"]

		@videoUrl = "http://pl-hls" << "#{@plflag }" << ".live.panda.tv/live_panda/" << "#{@room_key }" << ".m3u8"

		@videos = get('https://api.m.panda.tv/ajax_get_live_list_by_cate?cate=lol&order=person_num&pagenum=999999')["data"]["items"]

  end

end
