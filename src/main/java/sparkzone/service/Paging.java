package sparkzone.service;

public class Paging {

	/*����¡�� ���� ����*/
    private int currentPage;   //�޾ƿ� ���� ������ ��ȣ   
	private int totalPosts;    //��ü�ۼ�
    private int postsPerPage;  //�� ȭ�鿡 ���� ������ ��
    private int pagesPerBlock; //�� ȭ�鿡 ���� ��� ��
   
    
    public Paging(int currentPage, int totalPosts, int postsPerPage, int pagesPerBlock) {
    	 this.currentPage = currentPage;
    	 this.totalPosts = totalPosts;
    	 this.postsPerPage = postsPerPage;
    	 this.pagesPerBlock = pagesPerBlock;
    }
    
    //��ü ������ ��
    public int getTotalPages() {
    	return (int) Math.ceil((double) totalPosts / postsPerPage);
    }
    
    //���������� 
    public int getStartPage() {
    	return ((currentPage - 1)/ pagesPerBlock) * pagesPerBlock +1 ;
    }
    
    //������ ������
    public int getEndPage() {
    	int endPage = getStartPage() + pagesPerBlock -1;
    	int totalPages = getTotalPages();
    	return (endPage > totalPages) ? totalPages : endPage;
    }
    
	@Override
	public String toString() {
		return "Paging [currentPage=" + currentPage + ", totalPosts=" + totalPosts + ", postsPerPage=" + postsPerPage
				+ ", pagesPerBlock=" + pagesPerBlock + ", getTotalPages()=" + getTotalPages() + ", getStartPage()="
				+ getStartPage() + ", getEndPage()=" + getEndPage() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
}
