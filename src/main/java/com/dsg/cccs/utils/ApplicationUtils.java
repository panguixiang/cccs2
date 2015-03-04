package com.dsg.cccs.utils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.dsg.cccs.model.application.Author;
import com.dsg.cccs.model.application.ContentInfo;
import com.dsg.cccs.model.application.CopyrightPerson;
import com.dsg.cccs.model.application.MovieInfos;
import com.dsg.cccs.model.application.PartByAdd;
import com.dsg.cccs.model.application.Person;
import com.dsg.cccs.model.application.RecordProduct;
import com.dsg.cccs.model.application.TracksInfos;
import com.dsg.cccs.model.application.Z60;

public class ApplicationUtils {

	// 在61,62,64,64根据不同的登记类型获取申请方式和代理方式
	public static Z60 modifyAgentInfo(HttpServletRequest request, Z60 z61) {
		if (z61.getRegister_type().equalsIgnoreCase("z11")) {
			z61.setApply_type(request.getParameter("apply_type1"));
			// z61.setAgent(request.getParameter("agent1"));
		} else if (z61.getRegister_type().equalsIgnoreCase("z21")) {
			z61.setApply_type(request.getParameter("apply_type2"));
			z61.setAgent(request.getParameter("agent2"));
		} else if (z61.getRegister_type().equalsIgnoreCase("z31")) {
			z61.setApply_type(request.getParameter("apply_type3"));
			// z61.setAgent(request.getParameter("agent3"));
		} else if (z61.getRegister_type().equalsIgnoreCase("z41")) {
			z61.setApply_type(request.getParameter("apply_type4"));
			z61.setAgent(request.getParameter("agent4"));
		} else if (z61.getRegister_type().equalsIgnoreCase("z51")) {
			z61.setApply_type(request.getParameter("apply_type5"));
			z61.setAgent(request.getParameter("agent5"));
		}
		return z61;
	}

	// 创建转让信息列表
	public static List<ContentInfo> createContentInfo(
			HttpServletRequest request, String flow_num) {
		List<ContentInfo> infos = new ArrayList<ContentInfo>();
		String[] items = request.getParameterValues("item");
		String[] before_contents = request.getParameterValues("before_content");
		String[] after_contents = request.getParameterValues("after_content");
		for (int i = 1; i < items.length; i++) {
			ContentInfo info = new ContentInfo();
			info.setItem(items[i]);
			info.setBefore_content(before_contents[i]);
			info.setAfter_content(after_contents[i]);
			info.setFlow_num(flow_num);
			infos.add(info);
		}
		return infos;
	}

	// 创建权利人:Z11
	public static List<CopyrightPerson> createCps(HttpServletRequest request,
			String flow_num) {
		String[] names = request.getParameterValues("name1");
		// String[] ids = request.getParameterValues("copyrightPersonId1");
		String[] people_types = request.getParameterValues("peopleType1");
		String[] countrys = request.getParameterValues("country1");
		String[] provinces = request.getParameterValues("province1");
		String[] citys = request.getParameterValues("city1");
		String[] id_types = request.getParameterValues("idTypes1");
		String[] id_numbers = request.getParameterValues("idNumber1");
		String[] signs = request.getParameterValues("sign1");
		String[] opus_signs = request.getParameterValues("opusSign1");
		String[] addrs = request.getParameterValues("address1");

		List<CopyrightPerson> list = new ArrayList<CopyrightPerson>();
		for (int i = 1; i < names.length; i++) {
			CopyrightPerson cp = new CopyrightPerson();
			cp.setName(names[i]);
			cp.setPeople_type(people_types[i]);
			cp.setCountry(countrys[i]);
			cp.setProvince(provinces[i]);
			cp.setCity(citys[i]);
			cp.setId_type(id_types[i]);
			cp.setId_number(id_numbers[i]);
			cp.setSign(signs[i]);
			cp.setOpus_sign(opus_signs[i]);
			if (addrs != null) {
				cp.setAddr(addrs[i]);
			}
			cp.setType(1);
			cp.setFlow_num(flow_num);
			list.add(cp);
		}
		return list;
	}

	// Z21构建权利人列表
	public static List<CopyrightPerson> createCps1(HttpServletRequest request,
			String flow_num) {
		String[] names = request.getParameterValues("name1");
		String[] people_types = request.getParameterValues("peopleType1");
		String[] countrys = request.getParameterValues("country1");
		String[] id_types = request.getParameterValues("idTypes1");
		String[] id_numbers = request.getParameterValues("idNumber1");
		String[] addrs = request.getParameterValues("address1");
		List<CopyrightPerson> list = new ArrayList<CopyrightPerson>();
		for (int i = 1; i < names.length; i++) {
			CopyrightPerson cp = new CopyrightPerson();
			cp.setName(names[i]);
			cp.setPeople_type(people_types[i]);
			cp.setCountry(countrys[i]);
			cp.setId_type(id_types[i]);
			cp.setId_number(id_numbers[i]);
			cp.setAddr(addrs[i]);
			cp.setType(1);
			cp.setFlow_num(flow_num);
			list.add(cp);
		}
		return list;
	}

	// 权利人信息 :Z31
	public static List<CopyrightPerson> createCpsZ31(
			HttpServletRequest request, String flow_num) {
		String[] names = request.getParameterValues("name1");
		String[] people_types = request.getParameterValues("peopleType1");
		String[] countrys = request.getParameterValues("country1");
		String[] id_types = request.getParameterValues("idTypes1");
		String[] id_numbers = request.getParameterValues("idNumber1");
		String[] signs = request.getParameterValues("sign1");
		String[] addrs = request.getParameterValues("address1");
		CopyrightPerson cp = null;
		List<CopyrightPerson> list = new ArrayList<CopyrightPerson>();
		for (int i = 1; i < names.length; i++) {
			cp = new CopyrightPerson();
			cp.setName(names[i]);
			cp.setPeople_type(people_types[i]);
			cp.setCountry(countrys[i]);
			cp.setId_type(id_types[i]);
			cp.setId_number(id_numbers[i]);
			cp.setSign(signs[i]);
			cp.setAddr(addrs[i]);
			cp.setType(1);
			cp.setFlow_num(flow_num);
			list.add(cp);
		}
		return list;
	}

	// Z21构建受让人列表
	public static List<CopyrightPerson> createCps2(HttpServletRequest request,
			String flow_num) {
		String[] names = request.getParameterValues("name2");
		String[] people_types = request.getParameterValues("peopleType2");
		String[] countrys = request.getParameterValues("country2");
		String[] id_types = request.getParameterValues("idTypes2");
		String[] id_numbers = request.getParameterValues("idNumber2");
		String[] addrs = request.getParameterValues("address2");

		List<CopyrightPerson> list = new ArrayList<CopyrightPerson>();
		for (int i = 1; i < names.length; i++) {
			CopyrightPerson cp = new CopyrightPerson();
			cp.setName(names[i]);
			cp.setPeople_type(people_types[i]);
			cp.setCountry(countrys[i]);
			cp.setId_type(id_types[i]);
			cp.setId_number(id_numbers[i]);
			cp.setAddr(addrs[i]);
			cp.setType(2);
			cp.setFlow_num(flow_num);
			list.add(cp);
		}
		return list;
	}

	// 构建申请人
	public static Person createSqrPerson(HttpServletRequest request,
			String flow_num) {
		Person p = new Person();
		p.setType(1);
		p.setFlow_num(flow_num);
		p.setName(request.getParameter("sqrname"));
		if (request.getParameter("sqlIds") != null) {
			p.setId(Long.parseLong(request.getParameter("sqlIds")));
		}
		p.setAddress(request.getParameter("sqraddress"));
		p.setPost_code(request.getParameter("sqrpostCode"));
		p.setContact_person(request.getParameter("sqrcontactPerson"));
		p.setPhone(request.getParameter("sqrphone"));
		p.setEmail(request.getParameter("sqremail"));
		p.setMobile(request.getParameter("sqrmobile"));
		p.setFax(request.getParameter("sqrfax"));
		return p;
	}

	// 构建代理人
	public static Person createDlrPerson(HttpServletRequest request,
			String flow_num) {
		Person p = new Person();
		p.setType(2);
		p.setFlow_num(flow_num);
		if (request.getParameter("dlrIds") != null) {
			p.setId(Long.parseLong(request.getParameter("dlrIds")));
		}
		p.setName(request.getParameter("dlrname"));
		p.setAddress(request.getParameter("dlraddress"));
		p.setPost_code(request.getParameter("dlrpostCode"));
		p.setContact_person(request.getParameter("dlrcontactPerson"));
		p.setPhone(request.getParameter("dlrphone"));
		p.setEmail(request.getParameter("dlremail"));
		p.setMobile(request.getParameter("dlrmobile"));
		p.setFax(request.getParameter("dlrfax"));
		return p;
	}

	// 构建PartByAdd
	public static List<PartByAdd> createPartByAdd(String names[],
			String phones[], String flow_num) {
		PartByAdd partAdd = null;
		List<PartByAdd> list = new ArrayList<PartByAdd>();
		for (int i = 1; i < names.length; i++) {
			partAdd = new PartByAdd();
			partAdd.setName(names[i]);
			partAdd.setPhone(phones[i]);
			partAdd.setFlow_num(flow_num);
			list.add(partAdd);
		}
		return list;
	}

	// 创建流水号
	public static String getFlowNum(String appType, Long id) {
		Date date = new Date();
		String str1 = new SimpleDateFormat("yyyyMMdd").format(date);
		String str2 = new SimpleDateFormat("HHmmss").format(date);
		return str1 + appType + str2 + id.toString();
	}

	// z41转让/受让许可方构建
	public static List<CopyrightPerson> createCpsZ41(
			HttpServletRequest request, String flow_num, int types) {
		List<CopyrightPerson> list = new ArrayList<CopyrightPerson>();
		if (types == 1) {
			String[] cnnames1 = request.getParameterValues("cnname1");
			String[] ennames1 = request.getParameterValues("enname1");
			String[] addresses1 = request.getParameterValues("address1");
			String[] countrys1 = request.getParameterValues("country1");

			for (int i = 1; i < cnnames1.length; i++) {
				CopyrightPerson cp = new CopyrightPerson();
				cp.setName(cnnames1[i]);
				cp.setEnglish_name(ennames1[i]);
				cp.setAddr(addresses1[i]);
				cp.setCountry(countrys1[i]);
				cp.setType(1);
				cp.setFlow_num(flow_num);
				list.add(cp);
			}
		} else {
			String[] cnnames2 = request.getParameterValues("cnname2");
			String[] ennames2 = request.getParameterValues("enname2");
			String[] addresses2 = request.getParameterValues("address2");
			String[] countrys2 = request.getParameterValues("country2");

			for (int i = 1; i < cnnames2.length; i++) {
				CopyrightPerson cp = new CopyrightPerson();
				cp.setName(cnnames2[i]);
				cp.setEnglish_name(ennames2[i]);
				cp.setAddr(addresses2[i]);
				cp.setCountry(countrys2[i]);
				cp.setType(2);
				cp.setFlow_num(flow_num);
				list.add(cp);
			}
		}
		return list;
	}

	public static List<Author> createAuthors(HttpServletRequest request,
			String flow_num) {
		String[] names = request.getParameterValues("nameAuts");
		String[] oputyes = request.getParameterValues("opus_typeAuts");
		String[] signs = request.getParameterValues("signAuts");
		Author author = null;
		List<Author> list = new ArrayList<Author>();
		for (int i = 1; i < names.length; i++) {
			author = new Author();
			author.setName(names[i]);
			author.setOpus_type(oputyes[i]);
			author.setSign(signs[i]);
			author.setFlow_num(flow_num);
			list.add(author);
		}
		return list;
	}

	// R11著作权人信息
	public static List<CopyrightPerson> createCpsR11(
			HttpServletRequest request, String flow_num) {
		String[] names = request.getParameterValues("name1");
		String[] people_types = request.getParameterValues("peopleType1");
		String[] countrys = request.getParameterValues("country1");
		String[] provinces = request.getParameterValues("province1");
		String[] citys = request.getParameterValues("city1");
		String[] id_types = request.getParameterValues("idTypes1");
		String[] id_numbers = request.getParameterValues("idNumber1");
		String[] gardens = request.getParameterValues("garden1");
		String[] busTypes = request.getParameterValues("busType1");
		String[] hasLetters = request.getParameterValues("hasLetter1");

		List<CopyrightPerson> list = new ArrayList<CopyrightPerson>();
		for (int i = 1; i < names.length; i++) {
			CopyrightPerson cp = new CopyrightPerson();
			cp.setName(names[i]);
			cp.setPeople_type(people_types[i]);
			cp.setCountry(countrys[i]);
			cp.setProvince(provinces[i]);
			cp.setCity(citys[i]);
			cp.setId_type(id_types[i]);
			cp.setId_number(id_numbers[i]);
			cp.setGarden(gardens[i]);
			if (busTypes != null) {
				cp.setBusType(busTypes[i]);
			}
			if (hasLetters != null) {
				cp.setHasLetter(hasLetters[i]);
			}
			cp.setType(1);
			cp.setFlow_num(flow_num);
			list.add(cp);
		}
		return list;
	}

	// 授权方信息:Z71
	public static List<CopyrightPerson> createCpsZ71(
			HttpServletRequest request, String flow_num) {
		String[] names = request.getParameterValues("name1");
		String[] addrs = request.getParameterValues("address1");
		String[] contactPersons = request.getParameterValues("contactPerson1");
		String[] countrys = request.getParameterValues("country1");
		String[] phones = request.getParameterValues("phone1");
		String[] faxs = request.getParameterValues("fax1");
		String[] emails = request.getParameterValues("email1");
		CopyrightPerson cp = null;
		List<CopyrightPerson> list = new ArrayList<CopyrightPerson>();
		for (int i = 1; i < names.length; i++) {
			cp = new CopyrightPerson();
			cp.setName(names[i]);
			cp.setAddr(addrs[i]);
			cp.setOpus_sign(contactPersons[i]);
			cp.setCountry(countrys[i]);
			cp.setId_number(phones[i]);
			cp.setSign(faxs[i]);
			cp.setGarden(emails[i]);
			cp.setType(1);
			cp.setFlow_num(flow_num);
			list.add(cp);
		}
		return list;
	}

	// 录音制品信息:Z71
	public static Map<String, Object> createRecordProducts(
			HttpServletRequest request, String flow_num, String[] recordIds) {
		String[] cnames = request.getParameterValues("rname0");
		String[] enames = request.getParameterValues("rename0");
		String[] countrys = request.getParameterValues("country_0");
		String[] publishDates = request.getParameterValues("publishDate0");
		RecordProduct record = null;
		Map<String, Object> map = new HashMap<String, Object>();
		List<RecordProduct> list = new ArrayList<RecordProduct>();
		String allRecordIds = "";
		for (int i = 1; i < cnames.length; i++) {
			record = new RecordProduct();
			if(recordIds != null && !recordIds[i].equals("")) {
				record.setId(recordIds[i]);
				record.setMethodWay(2);
				allRecordIds=allRecordIds+","+recordIds[i];
			} else {
				record.setId(getUUid("z71"));
				record.setMethodWay(1);
			}
			record.setCh_name(cnames[i]);
			record.setEn_name(enames[i]);
			record.setFirst_address(countrys[i]);
			record.setCreate_date(publishDates[i]);
			record.setFlow_num(flow_num);
			list.add(record);
		}
		map.put("recordList", list);
		map.put("allRecordIds", allRecordIds);
		return map;
	}

	// R21构建转让（许可）方信息
	public static List<CopyrightPerson> createR21Cps1(
			HttpServletRequest request, String flow_num) {
		String[] names = request.getParameterValues("name1");
		String[] countrys = request.getParameterValues("country1");
		String[] provinces = request.getParameterValues("province1");
		String[] citys = request.getParameterValues("city1");
		List<CopyrightPerson> list = new ArrayList<CopyrightPerson>();
		for (int i = 1; i < names.length; i++) {
			CopyrightPerson cp = new CopyrightPerson();
			cp.setName(names[i]);
			cp.setCountry(countrys[i]);
			cp.setProvince(provinces[i]);
			cp.setCity(citys[i]);
			cp.setType(1);
			cp.setFlow_num(flow_num);
			list.add(cp);
		}
		return list;
	}

	// R21构建受让（被许可）方信息
	public static List<CopyrightPerson> createR21Cps2(
			HttpServletRequest request, String flow_num) {
		String[] names = request.getParameterValues("name2");
		String[] countrys = request.getParameterValues("country2");
		String[] provinces = request.getParameterValues("province2");
		String[] citys = request.getParameterValues("city2");
		List<CopyrightPerson> list = new ArrayList<CopyrightPerson>();
		for (int i = 1; i < names.length; i++) {
			CopyrightPerson cp = new CopyrightPerson();
			cp.setName(names[i]);
			cp.setCountry(countrys[i]);
			cp.setProvince(provinces[i]);
			cp.setCity(citys[i]);
			cp.setType(2);
			cp.setFlow_num(flow_num);
			list.add(cp);
		}
		return list;
	}
	
	// z71构建录音制品曲目信息
		public static List<TracksInfos> createTracks(
				HttpServletRequest request, String recordId, String flow_num, String recordName) {
			String[] titles = request.getParameterValues("title_");
			String[] artists = request.getParameterValues("artist_");
			String[] sonWriters = request.getParameterValues("songWriter_");
			String[] wordsAuthors = request.getParameterValues("wordsAuthor_");
			String[] durations = request.getParameterValues("duration_");
			String[] remarks = request.getParameterValues("remark_");
			List<TracksInfos> list = new ArrayList<TracksInfos>();
			TracksInfos track = null;
			for (int i = 1; i < titles.length; i++) {
			    track = new TracksInfos();
				track.setTitle_(titles[i]);
				track.setArtist_(artists[i]);
				track.setSongWriter_(sonWriters[i]);
				track.setWordsAuthor_(wordsAuthors[i]);
				track.setDuration_(durations[i]);
				track.setRemark_(remarks[i]);
			    track.setRecordId(recordId);
			    track.setRecordName(recordName);
			    track.setFlow_num(flow_num);
				list.add(track);
			}
			return list;
		}
		
	public static List<MovieInfos>	createMovies(HttpServletRequest request, String flow_num) {
		String[] cntitles = request.getParameterValues("cnTitle_");
		String[] entitles = request.getParameterValues("enTitle_");
		String[] companys = request.getParameterValues("company_");
		String[] proCountrys = request.getParameterValues("proCountry_");
		String[] directors = request.getParameterValues("director_");
		String[] leadRoles = request.getParameterValues("leadRole_");
		String[] publisDatas = request.getParameterValues("publishDate_");
		String[] countrys = request.getParameterValues("country1");
		List<MovieInfos> list = new ArrayList<MovieInfos>();
		MovieInfos movie = null;
		for (int i = 1; i < cntitles.length; i++) {
			movie = new MovieInfos();
			movie.setCnTitle_(cntitles[i]);
			movie.setEnTitle_(entitles[i]);
			movie.setCompany_(companys[i]);
			movie.setProCountry_(proCountrys[i]);
			movie.setDirector_(directors[i]);
			movie.setLeadRole_(leadRoles[i]);
			movie.setPublishDate_(publisDatas[i]);
			movie.setCountry1(countrys[i]);
			movie.setFlow_num(flow_num);
			list.add(movie);
		}
		return list;
	}

	
 public static List<CopyrightPerson> createCps1Z51(
			HttpServletRequest request, String flow_num) {
		String[] names = request.getParameterValues("name1");
		String[] peopleTypes = request.getParameterValues("peopleType1");
		String[] legalPeoples = request.getParameterValues("legalPeople1");
		String[] idTypess = request.getParameterValues("idTypes1");
		String[] idNumbers = request.getParameterValues("idNumber1");
		String[] impawnTypes = request.getParameterValues("impawnType1");
		String[] phones = request.getParameterValues("phone1");
		String[] contactPersons = request.getParameterValues("contactPerson1");
		String[] postCodes = request.getParameterValues("postCode1");
		String[] addresss = request.getParameterValues("address1");
		CopyrightPerson cp = null;
		List<CopyrightPerson> list = new ArrayList<CopyrightPerson>();
		for (int i = 1; i < names.length; i++) {
			cp = new CopyrightPerson();
			cp.setName(names[i]);
			cp.setPeople_type(peopleTypes[i]);
			if(null != peopleTypes[i] && !peopleTypes[i].equals("自然人")) {
				cp.setHasLetter(legalPeoples[i]);
			}
			cp.setId_type(idTypess[i]);
			cp.setId_number(idNumbers[i]);
			cp.setBusType(impawnTypes[i]);
			cp.setSign(phones[i]);
			cp.setOpus_sign(contactPersons[i]);
			cp.setGarden(postCodes[i]);
			cp.setAddr(addresss[i]);
			cp.setType(1);
			cp.setFlow_num(flow_num);
			list.add(cp);
		}
		return list;
	}
 
 public static List<CopyrightPerson> createCps2Z51(
			HttpServletRequest request, String flow_num) {
		String[] names = request.getParameterValues("name2");
		String[] peopleTypes = request.getParameterValues("peopleType2");
		String[] legalPeoples = request.getParameterValues("legalPeople2");
		String[] idTypess = request.getParameterValues("idTypes2");
		String[] idNumbers = request.getParameterValues("idNumber2");
		String[] impawnTypes = request.getParameterValues("impawnType2");
		String[] phones = request.getParameterValues("phone2");
		String[] contactPersons = request.getParameterValues("contactPerson2");
		String[] postCodes = request.getParameterValues("postCode2");
		String[] addresss = request.getParameterValues("address2");
		CopyrightPerson cp = null;
		List<CopyrightPerson> list = new ArrayList<CopyrightPerson>();
		for (int i = 1; i < names.length; i++) {
			cp = new CopyrightPerson();
			cp.setName(names[i]);
			cp.setPeople_type(peopleTypes[i]);
			cp.setHasLetter(legalPeoples[i]);
			if(null != impawnTypes && impawnTypes.length>0) {
			cp.setBusType(impawnTypes[i]);	
			}
			cp.setId_type(idTypess[i]);
			cp.setId_number(idNumbers[i]);
			cp.setSign(phones[i]);
			cp.setOpus_sign(contactPersons[i]);
			cp.setGarden(postCodes[i]);
			cp.setAddr(addresss[i]);
			cp.setType(2);
			cp.setFlow_num(flow_num);
			list.add(cp);
		}
		return list;
	}
 
 public static List<CopyrightPerson> createCps3Z51(
			HttpServletRequest request, String flow_num) {
		String[] names = request.getParameterValues("name3");
		String[] peopleTypes = request.getParameterValues("peopleType3");
		String[] legalPeoples = request.getParameterValues("legalPeople3");
		String[] idTypess = request.getParameterValues("idTypes3");
		String[] idNumbers = request.getParameterValues("idNumber3");
		String[] impawnTypes = request.getParameterValues("impawnType3");
		String[] phones = request.getParameterValues("phone3");
		String[] contactPersons = request.getParameterValues("contactPerson3");
		String[] postCodes = request.getParameterValues("postCode3");
		String[] addresss = request.getParameterValues("address3");
		CopyrightPerson cp = null;
		List<CopyrightPerson> list = new ArrayList<CopyrightPerson>();
		for (int i = 1; i < names.length; i++) {
			cp = new CopyrightPerson();
			cp.setName(names[i]);
			cp.setPeople_type(peopleTypes[i]);
			cp.setHasLetter(legalPeoples[i]);
			cp.setId_type(idTypess[i]);
			cp.setId_number(idNumbers[i]);
			if(null != impawnTypes && impawnTypes.length>0) {
				cp.setBusType(impawnTypes[i]);	
				}
			cp.setSign(phones[i]);
			cp.setOpus_sign(contactPersons[i]);
			cp.setGarden(postCodes[i]);
			cp.setAddr(addresss[i]);
			cp.setType(3);
			cp.setFlow_num(flow_num);
			list.add(cp);
		}
		return list;
	}
  
 public static List<PartByAdd> createZ52PartByAdd(HttpServletRequest request, String flow_num, String obj) {
	 String[] names = null;
	 List<PartByAdd> parts = new ArrayList<PartByAdd>();
	 PartByAdd part = null;
	 if(obj.equals("czr")) { //出质人信息
		 names = request.getParameterValues("czrName_");
	 } else {//质权人信息
		 names = request.getParameterValues("zqrName_");
	 }
	for (int i = 1; i < names.length; i++) {
		part = new PartByAdd();
		part.setName(names[i]);
		part.setPhone(obj);
		part.setFlow_num(flow_num);
		parts.add(part);
	}
	return parts;
	
 }
  public static String getUUid(String str) {
	  UUID uuid = UUID.randomUUID();
     return uuid.toString().replaceAll("-", "")+str;
  }
}
