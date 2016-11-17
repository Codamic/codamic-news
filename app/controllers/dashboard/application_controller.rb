class Dashboard::ApplicationController < Faalis::Dashboard::ApplicationController

  def setup_sidebar
    @sidebar = sidebar(t('faalis.engine_name')) do |s|
      s.faalis_entries

      # Put your sidebar entries in here like this:
      #
      s.menu("news", icon: 'fa fa-book') do
        s.item("posts",
               url: main_app.dashboard_posts_path,
               model: 'Post')
      end
      #
      # For more information take a look at `sidebar` section of Faalis guides.
    end
  end
end
