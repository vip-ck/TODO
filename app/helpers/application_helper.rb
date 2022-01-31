# frozen_string_literal: true

module ApplicationHelper
  def current_date
    Date.current.to_s
  end

  def list_tag(arr)
    tag.ul do
      safe_join(arr.map { |line| raw tag.li(line) })
    end
  end
end
