module LayoutHelper
  def page_title
    if @page_title
      @page_title + ' | ' + t('app_name')
    else
      t('app_name')
    end
  end
end
