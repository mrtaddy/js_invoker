require 'rails_helper'

feature 'Invoke registered function', js: true do
  let(:label_layout) { '#application#' }
  let(:label_all) { '#all#' }
  let(:label1) { '#first#' }
  let(:label2) { '#second#' }
  let(:label3) { '#third#' }

  scenario 'Invoke function' do
    visit '/first'
    expect(page).to have_content label_layout
    expect(page).to have_content label_all
    expect(page).to have_content label1
    expect(page).to_not have_content label2
    expect(page).to_not have_content label3
  end

  scenario 'Invoke function' do
    visit '/second'
    expect(page).to have_content label_layout
    expect(page).to have_content label_all
    expect(page).to_not have_content label1
    expect(page).to have_content label2
    expect(page).to_not have_content label3
  end

  scenario 'Invoke function' do
    visit '/third'
    expect(page).to have_content label_layout
    expect(page).to have_content label_all
    expect(page).to_not have_content label1
    expect(page).to_not have_content label2
    expect(page).to_not have_content label3
  end

  scenario 'Invoke function on multiple pages' do
    visit '/first'
    expect(page).to have_content label_layout
    expect(page).to have_content label_all
    expect(page).to have_content label1
    expect(page).to_not have_content label2
    expect(page).to_not have_content label3
    visit '/third'
    expect(page).to have_content label_layout
    expect(page).to have_content label_all
    expect(page).to_not have_content label1
    expect(page).to_not have_content label2
    expect(page).to_not have_content label3
  end
end
