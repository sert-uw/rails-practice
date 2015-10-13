class SidebarCell < Cell::ViewModel
  def show
    @segments = Segment.all
    render
  end
end
