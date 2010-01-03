package com.living.util;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.jsp.JspWriter;

import com.living.model.ProductCategory;

public class TreeNode {
	private ArrayList<TreeNode> childs;
	ProductCategory data;
	// int size;
	int cursor;

	public TreeNode(ProductCategory data) {
		this.data = data;
		// size =0;
		cursor = 0;
		childs = new ArrayList<TreeNode>();
	}

	public void addChilds(TreeNode child) {
		childs.add(child);
	}

	// 同一对象,才会被移除
	public void removeChilds(TreeNode child) {
		childs.remove(child);
	}

	public void resetCursor() {
		cursor = 0;
	}

	public TreeNode getNextChilds() {
		if (childs.size() == 0 || cursor >= childs.size())
			return null;
		else {
			return childs.get(cursor++);
		}
	}

	public boolean hasNextChild() {
		return cursor < childs.size();
	}

	public boolean hasChilds() {
		return childs.size() != 0;
	}

	public TreeNode findChildByID(Long id) {
		for (int i = 0; i < childs.size(); i++) {
			if (childs.get(i).data.getProductCategoryId().equals(id))
				return childs.get(i);
		}
		return this;
	}

	public static TreeNode createCategoryTree(
			List<ProductCategory> allCategoryTree) {
		TreeNode root = new TreeNode(null);
		TreeNode temp;
		for (int i = 0; i < allCategoryTree.size(); i++) {
			temp = root.findChildByID(allCategoryTree.get(i)
					.getParentCategoryId());
			temp.addChilds(new TreeNode(allCategoryTree.get(i)));
		}
		return root;
	}

	 public static void printLi(TreeNode node, PrintStream out) {
	 if (node != null) {
	 if (node.data != null)
	 out.println("<li class=\"submenu\"><a href=\""
	 + node.data.getProductCategoryId() + "\">"
	 + node.data.getName());
	 node.resetCursor();
	 if (node.hasChilds()) {
	 out.println("<ul class=\"level2\">");
	 while (node.hasNextChild()) {
	 printLi(node.getNextChilds(), out);
	 }
	 out.println("</ul>");
	 }
	 if (node.data != null)
	 out.println("</li>");
	 }
	 }
	//static boolean isfirst=false;
	 public static void treeToString(TreeNode node,StringBuffer out){
		 if (node != null) {
			 String s =node.hasChilds()?"submenu":"submenu-blue";
			 if (node.data != null) {
				String href = node.hasChilds()?
						 "<a href=\"category/showCategory.action?category.productCategoryId="+ node.data.getProductCategoryId()+"\">":
						 "<a href=\"product/listProduct.action?category.productCategoryId="+ node.data.getProductCategoryId()+"\">";
				out.append("<li class=\""+s+"\">\n " + href + node.data.getName()+"</a>\n");
			 }
			 
			 node.resetCursor();
			 if (node.hasChilds()) {
				 if (node.data != null)out.append("<ul class=\"level2\">\n");
			 while (node.hasNextChild()) {
				 treeToString(node.getNextChilds(), out);
			 }
			 if (node.data != null)out.append("</ul>\n");
			 }
			 if (node.data != null)
				 out.append("</li>\n");
			 }
	 }
	 
	 public static void printLi(TreeNode node, PrintWriter out) {
	 if (node != null) {
	 if (node.data != null)
	 out.println("<li class=\"submenu\"> <a href=\""
	 + node.data.getProductCategoryId() + "\">"
	 + node.data.getName());
	 node.resetCursor();
	 if (node.hasChilds()) {
	 out.println("<ul class=\"level2\">");
	 while (node.hasNextChild()) {
	 printLi(node.getNextChilds(), out);
	 }
	 out.println("</ul>");
	 }
	 if (node.data != null)
	 out.println("</li>");
	 }
	 }

	public static void printLi(TreeNode node, JspWriter out) throws IOException {
			if (node != null) {
				if (node.data != null) {
					out.println("<li class=\"submenu\"> <a href=\""	+ node.data.getProductCategoryId() + "\">" + node.data.getName());
				}
				node.resetCursor();
				if (node.hasChilds()) {
					if (node.data != null)
						out.println("<ul class=\"level2\">");
					while (node.hasNextChild()) {
						printLi(node.getNextChilds(),out);
					}
					if (node.data != null)
						out.println("</ul>");
				}
				if (node.data != null)
					out.println("</li>");
			}
	}
	
}