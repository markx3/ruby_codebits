class Codebit < ApplicationRecord
  LANGUAGES = ['ruby', 'javascript', 'sh', 'html', 'css', 'python', 'java']
  validates :name, presence: true
  validates :code, presence: true
  validates :language, presence: true, inclusion: { in: LANGUAGES }
end
