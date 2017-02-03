module ImageHelper
  def self.build_path(image)
    this.get_archive_path
  end

  private
  def get_archive_path
    path = SsSetting.order('GroupName desc').where('GroupName=CardioPACS\ArchiveServer\Settings\Volumes\Archive1 and KeyName=Path')
    path.KeyValue.to_s
  end
end