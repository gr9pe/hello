class PdfsController < ApplicationController
  def create
    report = Thinreports::Report.new(layout: "#{Rails.root}/app/pdfs/resume.tlf")
    report.start_new_page
    report.page.item(:title).value('sample')
    file = report.generate
    send_data(
      file,
      filename: 'resume.pdf',
      type: 'application/pdf',
      disposition: 'inline'
    )
  end


end
