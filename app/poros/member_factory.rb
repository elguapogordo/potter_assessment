class MemberFactory
  attr_reader :members

  def initialize(query)
    @query = query
    @members = []
  end

  def return_members
    collect_members
    @members
  end

  private

  def collect_members
    members_info.each do |member_info|
      add_member(Member.new(member_info))
    end
  end

  def add_member(member)
    @members << member
  end

  def members_info
    HarryPotterV1.new(@query).member_info
  end
end
