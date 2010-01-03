package com.living.action;

import java.util.Date;
import java.util.List;

import com.living.model.Manufacturer;
import com.living.util.upload.FileUploadAction;

@SuppressWarnings("unchecked")
public class ManufacturerAction extends FileUploadAction {
	private static final long serialVersionUID = -5007614904124628621L;

	private Manufacturer manufacturer;
	private List<Manufacturer> manufacturers;
	
	private String action;
	
	/**
	 * 新厂商
	 * @author C.donglin
	 * @since 2009-12-27
	 * @return
	 */
	public String manufactureNew() {
		totalProperty = manufecturerService.getCount();
		manufacturers = manufecturerService.findAll(start, limit);
		return SUCCESS;
	}
	
	/**
	 * 保存生产厂商
	 * @author C.donglin
	 * @since 2009-12-25
	 * @return
	 */
	public String saveManufacture() {
		if (manufacturer != null) {
			try {
				String imageManual = (String) getRequest().getAttribute("image_manual");
				if (imageManual == null) {
					imageManual = upload();
				}
				manufacturer.setPicture(imageManual);
				manufacturer.setAddDate(new Date());
				manufecturerService.save(manufacturer);
			} catch (Exception e) {
				e.printStackTrace();
				return ERROR;
			}
			if (manufacturer != null) {
				return SUCCESS;
			}
		}
		return INPUT;
	}
	
	/**
	 * 厂商列表
	 * @author C.donglin
	 * @since 2009-12-27
	 * @return
	 */
	public String manufactureList() {
		totalProperty = manufecturerService.getCount();
		manufacturers = manufecturerService.findAll(start, limit);
		if (manufacturers != null && manufacturers.size() > 0) {
			manufacturer = manufacturers.get(0);
			getRequest().setAttribute("manufacturer_current", manufacturer);
		}
		return SUCCESS;
	}

	/**
	 * 查看或编辑厂商
	 * @author C.donglin
	 * @since 2009-12-27
	 * @return
	 */
	public String manufactureView() {
		totalProperty = manufecturerService.getCount();
		manufacturers = manufecturerService.findAll(start, limit);
		if (manufacturer != null) {
			manufacturer = (Manufacturer) manufecturerService.findById(manufacturer.getManufacturerId());
			if (manufacturer != null) {
				getRequest().setAttribute("manufacturer_current", manufacturer);
				return SUCCESS;
			}
		}
		return ERROR;
	}
	
	/**
	 * 更新厂商
	 * @author C.donglin
	 * @since 2009-12-27
	 * @return
	 */
	public String manufactureUpdate() {
		if (manufacturer != null) {
			manufacturer = (Manufacturer) manufecturerService.update(manufacturer);
			totalProperty = manufecturerService.getCount();
			manufacturers = manufecturerService.findAll(start, limit);
			if (manufacturer != null) {
				getRequest().setAttribute("manufacturer_current", manufacturer);
				return SUCCESS;
			}
		}
		totalProperty = manufecturerService.getCount();
		manufacturers = manufecturerService.findAll(start, limit);
		return INPUT;
	}
	
	/**
	 * @return the manufacturer
	 */
	public Manufacturer getManufacturer() {
		return manufacturer;
	}

	/**
	 * @param manufacturer the manufacturer to set
	 */
	public void setManufacturer(Manufacturer manufacturer) {
		this.manufacturer = manufacturer;
	}

	public List<Manufacturer> getManufacturers() {
		return manufacturers;
	}

	public void setManufacturers(List<Manufacturer> manufacturers) {
		this.manufacturers = manufacturers;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}
}
