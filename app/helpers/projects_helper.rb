module ProjectsHelper
  def nested_projects(projects)
    projects.map do |project, sub_projects|
      render(project) + content_tag(:div, nested_projects(sub_projects), :class => "nested_projects")
    end.join.html_safe
  end
end
