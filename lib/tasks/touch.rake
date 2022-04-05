# frozen_string_literal: true

namespace :touch do
  desc 'Создание файла hello_from_whenever.txt'
  task hello_from_whenever: :environment do
    FileUtils.touch Rails.root.join('tmp/hello_from_whenever.txt')
  end

  desc 'Удаление файла hello_from_whenever.txt'
  task remove_files: :environment do
    FileUtils.remove_file Rails.root.join('tmp/hello_from_whenever.txt')
  end
end
