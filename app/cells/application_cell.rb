class ApplicationCell < Cell::ViewModel

  # 独自の helper
  include ApplicationHelper

  # 認証系 のhelper
  include DeviseHelper

  # gem の helper
  include FontAwesome::Rails::IconHelper
  include BreadcrumbsOnRails::ControllerMixin::HelperMethods
  include LazyHighCharts::LayoutHelper

  # asset 関連（image_path）
  include ActionView::Helpers::AssetUrlHelper
  include Sprockets::Rails::Helper
  ## asset の探索範囲を指定
  self.assets_prefix      = Rails.application.config.assets.prefix
  self.assets_environment = Rails.application.assets
  ## asset に digest が付与されるようにする
  self.digest_assets      = Rails.application.config.assets[:digest]

  # form 関連
  include ActionView::RecordIdentifier
  include ActionView::Helpers::FormHelper
  include ActionView::Helpers::FormOptionsHelper

  ## form_for の内部で利用しているため include
  String.send :include, ActionView::Helpers::TextHelper
  String.send :include, ActionView::Context

  ## form_for の返り値が escape されてしまうので override 
  def form_for(model, options, &block)
    raw(super)
  end

  ## fields_for の返り値が escape されてしまうので override 
  def fields_for(model, &block)
    raw(super)
  end

  # i18n 関連
  include ActionView::Helpers::TranslationHelper

  def scope_key_by_partial(key)
    if key.to_s.first=="."
      "cells.#{self.class.to_s.underscore}#{key}"
    else
      key
    end
  end

  # model が複数の場合のエイリアス
  def models
    model
  end

  # flash にアクセスできるように
  def flash
    parent_controller.flash
  end

end
