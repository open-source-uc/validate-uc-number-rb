require 'spec_helper'

describe 'When validating ActiveModel models' do
  it 'should have a valid student id' do
    User.new(student_id: '14644088').should be_valid
  end

  it 'should not permit integer values' do
    User.new(student_id: 14644088).should_not be_valid
  end

  it 'should correctly validate student ids with a "J"' do
    User.new(student_id: '1263476J').should be_valid
  end

  it 'should not permit invalid student ids' do
    User.new(student_id: '12345678').should_not be_valid
  end
end

describe 'When validating strings' do
  it 'should have a valid student id' do
    '14644088'.valid_uc_id?.should be_truthy
  end

  it 'should correctly validate student ids with a "J"' do
    '1263476J'.valid_uc_id?.should be_truthy
  end

  it 'should not permit invalid student ids' do
    '12345678'.valid_uc_id?.should be_falsey
  end
end
