require 'rails_helper'

feature 'Invoke registered function', js: true do
  let(:label_layout) { '#application#' }
  let(:label_all) { '#all#' }
  let(:label1) { '#first#' }
  let(:label2) { '#second#' }
  let(:label3) { '#third#' }
  let(:label4) { '#fourth#' }

  scenario 'Invoke function' do
    visit '/first'
    expect(page).to have_content label_layout
    expect(page).to have_content label_all
    expect(page).to have_content label1
    expect(page).to_not have_content label2
    expect(page).to_not have_content label3
    expect(page).to_not have_content label4
  end

  scenario 'Invoke function' do
    visit '/second'
    expect(page).to have_content label_layout
    expect(page).to have_content label_all
    expect(page).to_not have_content label1
    expect(page).to have_content label2
    expect(page).to_not have_content label3
    expect(page).to_not have_content label4
  end

  scenario 'Invoke function' do
    visit '/third'
    expect(page).to have_content label_layout
    expect(page).to have_content label_all
    expect(page).to_not have_content label1
    expect(page).to_not have_content label2
    expect(page).to_not have_content label3
    expect(page).to_not have_content label4
  end

  scenario 'Invoke function on multiple pages' do
    visit '/first'
    expect(page).to have_content label_layout
    expect(page).to have_content label_all
    expect(page).to have_content label1
    expect(page).to_not have_content label2
    expect(page).to_not have_content label3
    expect(page).to_not have_content label4

    visit '/third'
    expect(page).to have_content label_layout
    expect(page).to have_content label_all
    expect(page).to_not have_content label1
    expect(page).to_not have_content label2
    expect(page).to_not have_content label3
    expect(page).to_not have_content label4
  end

  scenario 'Invoke Immediately function' do
    visit '/fourth'
    expect(page).to have_content label_layout
    expect(page).to have_content label_all
    expect(page).to_not have_content label1
    expect(page).to_not have_content label2
    expect(page).to_not have_content label3
    expect(page).to have_content label4
  end
end
