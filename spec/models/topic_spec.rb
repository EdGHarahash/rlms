require 'rails_helper'

describe Topic do
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_uniqueness_of :title }
  it { is_expected.to validate_presence_of :course_id }
  it { is_expected.to validate_presence_of :slug }
  it { is_expected.to validate_uniqueness_of :slug }

  it { is_expected.to have_many(:materials) }
  it { is_expected.to have_many(:questions) }
  it { is_expected.to have_many(:tasks) }
end
