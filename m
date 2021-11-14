Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D400044F7FD
	for <lists+tipc-discussion@lfdr.de>; Sun, 14 Nov 2021 14:09:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mmFGG-0001dH-F1; Sun, 14 Nov 2021 13:09:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <prvs=69529e410e=ying.xue@windriver.com>)
 id 1mmFGF-0001dA-2B
 for tipc-discussion@lists.sourceforge.net; Sun, 14 Nov 2021 13:09:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=flnspX0e31UQVg89rNaFQfBX4eSE/w6kba0bCKOl7wc=; b=GFNsahRQyOfxt+7WJSVnkqSnl1
 nv/MjGigBxv4rhtltxr6ab2IbntDsiZoyWjHBmTLrV+6cY/408oNEYJHnzU8bijyuOXMv2zcv1PyD
 bGqR+DHKYOaSBXVvwOXCEP3uUxcVQrgVSKh5JyzPjWCRRsWKsnFs9WWOMTeOAAsLcuqg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=flnspX0e31UQVg89rNaFQfBX4eSE/w6kba0bCKOl7wc=; b=I/fG/W8Bpo2hSI/PaDNkYx0wXI
 ZIuBCOIVeFLUeEGZ4o9w78aumbKCtz3Q1CPNDnfP77rc8FQVaZY1eosPmXpsMU9H6ndzZ7v9bTrCz
 gklOIvyW2bT+JlDyLZ062bviaA8Usy/XgU/VDgAUn8DGYvClF4W0US6Z+eJmik9mC/uY=;
Received: from mx0a-0064b401.pphosted.com ([205.220.166.238])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mmFGC-00Chuk-Kp
 for tipc-discussion@lists.sourceforge.net; Sun, 14 Nov 2021 13:09:32 +0000
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 1AECwuxi004697;
 Sun, 14 Nov 2021 05:09:21 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=flnspX0e31UQVg89rNaFQfBX4eSE/w6kba0bCKOl7wc=;
 b=hx1kVUicCDqWEPCuE2nBRRnIubLF7LsqSAa79llPLo07530yVOYFpoX0/ivsvq+rPFmG
 qoO7N7df+A5QQJfyB1FrJqOGTa/EwfnuaZjFSJoFwYgVqmBmFyxTfTAXDHBsSptbjcxk
 AF43j5cGpBAtaw9SYJH2s5RsX6svSsqC7zK4Ouu8PYtM+re3pceKsPqlVaeYxfv37KEx
 cNsqLLLRJKOiWNa/i6KVHBEYUX+LhiBVbfkdNO0nsoo7V8ZvI1rw4D1k/+Ku63AL36op
 b1cwUo+dGwXRcp0HK1G92R9E+JR9VKqJC3v3Mt+yoAN8+U6DyEUKb4OHnJaJQerMlb0q BA== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2176.outbound.protection.outlook.com [104.47.55.176])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ca9h80thq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 14 Nov 2021 05:09:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bOv0f9dXEJIATDoFJ4twyYl58EdHtd+lrSgT2uHJewtkfA+ux0mIbWOGuTFtVGifvooseWixEowPjOfMklmlE3Tud9m5jjNoni5EGGmPB4XORQo4PKLPy1fG2QFzvBgOyXVZEqLzfnEP9/GB4QlLtwvTzyvTK31ydzHCdL49SMup+Jxw8VtfMB59YdujZfSNgoTAQBMZy0XTAE/ew8W4y/bgmX2QUshwQjnNRHUPCCrxDC9Wghmyz6cT0TmXJ2qBZR99AygI8xOWhX9dDLGOvqgmtzCgpFe1hziydehvOLoTlgZXZRr/6VZafOEQmzayY7z/Q0mSM6cP2NcMc3tTVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=flnspX0e31UQVg89rNaFQfBX4eSE/w6kba0bCKOl7wc=;
 b=mRVkH53qOS4APcZSlmpzzPocXNIn0+vhglpA+oacwzLi1nx2aHFzG/CiZX5YrxfqBM0yBuP0FubZsPzKMqfOMW27/VsYxF4JYN6nBOh3PIjDvH07xAKiwYjoTVurIYniw3b+7ra+UUYNz+jwfil6wrPs1EjTFnjUwdYOMDFijgRW8QscXf2CCslY04k/oTYEAMiCf1sXkmfijFJpBRzSAQ9TDw54NISBLS/37IRHVCLsJ7wka5QABMploQl0ANU7xICvAXeROakgwRnlWd63ZiM4xtofcCtblW+hiMZD6/Q2wNvYcPOXM3WRuD49f5++6OoU1S8p4vHi3Kl5mxvXdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BL3PR11MB5682.namprd11.prod.outlook.com (2603:10b6:208:33d::18)
 by BL0PR11MB3233.namprd11.prod.outlook.com (2603:10b6:208:68::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.15; Sun, 14 Nov
 2021 13:09:19 +0000
Received: from BL3PR11MB5682.namprd11.prod.outlook.com
 ([fe80::7967:f6c7:1632:1549]) by BL3PR11MB5682.namprd11.prod.outlook.com
 ([fe80::7967:f6c7:1632:1549%7]) with mapi id 15.20.4649.020; Sun, 14 Nov 2021
 13:09:18 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Xin Long <lucien.xin@gmail.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [PATCH net] tipc: only accept encrypted
 MSG_CRYPTO msgs
Thread-Index: AQHX1/rGivkmhybclUmLKXgVSdsPyqwDAZGA
Date: Sun, 14 Nov 2021 13:09:18 +0000
Message-ID: <BL3PR11MB5682A731BCC8C06CE37B512C84979@BL3PR11MB5682.namprd11.prod.outlook.com>
References: <d34934d6dab6d6490c324c60eb9a06119302bde4.1636744961.git.lucien.xin@gmail.com>
In-Reply-To: <d34934d6dab6d6490c324c60eb9a06119302bde4.1636744961.git.lucien.xin@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0146dbd5-6e76-4517-745d-08d9a76ff7c0
x-ms-traffictypediagnostic: BL0PR11MB3233:
x-microsoft-antispam-prvs: <BL0PR11MB3233FBDFBAAD2915D01532F284979@BL0PR11MB3233.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JW1281WC0yxTkfT86MjX6G9DVkZvIBdwmonQ6WqoelptXqTEGjsLqyMT4T1JKeYHR8v2yokyuidziTL5d7I6RhNTdpORdtM6kHeI5tjWGH9sm4oHu37etWDduwAvC6kzqqW1frHdpUpd+wNZWlnLFfB+ZAFCVNNiD5Z6u1pRXKO9/fhmT49p361vLIHu7n2fqR8643+WVftKHE5IwUYUD8oNxwtXSkvdXIaO053hN4qe5y/E+EVjdPiIOQYuqgGqe94/DRlLtkn/yUqddVRgqohqMpgamQR6phRBH/6Afb4Xu7rgMEFjQNXEDdWk+jUN7zxYIJAsBlKY/AZrabV/cHKLNcJSLnMORmD3Bq/P16Hjxw9pVAkBQLPLsYLYk6umtgCGVMs/d79M4q/Y2eUcc7yItIWnIQzptpTUPPtrImfsxKvkKaL6E8zjLrWHFvid/Utqg93osFV/hAb9i/s003meD7zCRwSeQv9kqGz1VzFkPWPUa+KQF8+V1UZMLUnyM4xRkN0Y9Uy8o8Zpu/QnHt4PjTRa1pp3jP2ojBaolO+wfKqYEPnD1qu3OXpVoQwvmi9rGLPfVDdiARoaAouOLRRa0NPfbWEkN5uNxD72foKnabNP9PCSRuIcAUTaPIZFu+VQVCHoRIH6bw1lo3VWXtna1fI9s+gUS5bQAgGSNHzH4LHTmRO/g2bsUPNnSOlkoX+zAbhOAaYXilrj0Jj8l49zSuePvuNRU/z2fICMb25r+UOvHLaCMgx3Y8Ysu8YySmsKI9mKrlaM2lJgMb9D4x53UyStWeklKztt/MMHUhc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB5682.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2906002)(966005)(122000001)(66556008)(64756008)(66446008)(8676002)(86362001)(8936002)(38100700002)(71200400001)(76116006)(66476007)(7696005)(55016002)(110136005)(316002)(5660300002)(38070700005)(52536014)(33656002)(6506007)(66946007)(508600001)(9686003)(186003)(53546011)(26005)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wPKNXSkXI8l4kNiWKWF6BnJYVaqCcvV7REppLdyA72xkLNDSvtgJblueSkIb?=
 =?us-ascii?Q?gFxxiZWro2oV06SE0W01f+bcpumEbqkOYMHpVDqLMWTw9mslV0k11AJLizFq?=
 =?us-ascii?Q?0Lsha7S+8+264JPokGHjeJoWwDrjmW8hWlOWoNK2+XpgDZXeZEUZysUMpG0X?=
 =?us-ascii?Q?s7qAFwikuVA9rdKK6vF7Zf7cJdaD+kZSlhLHPkWdOAkWFrcne/7RGCUsvKaA?=
 =?us-ascii?Q?GORHJ1kSV+FwO+ZxeQj8BZCwS+rReG5bWZMo4/+SQVyo+6ew2vyaKoA/sl0M?=
 =?us-ascii?Q?ltbFUvvQilR7VvtTg7uJkK+u3g18thAOoXRbzEH3j+jM6DvhfEwGdfLqj/Io?=
 =?us-ascii?Q?0LC8RtxVv/ni5lmhEFhEfyM78QCn/IKCxtVMD4Xbeun5OOW3v4qmykaDBGML?=
 =?us-ascii?Q?Zxqc416sR4+FM3EPLIFPG1PjnUONuUDLX3zqm/tT8RBCMe2H2ogi1ieMuKef?=
 =?us-ascii?Q?J62MceiwCkRkEF3wVe8oqPBTesoW26GsMhcGDZdyQRUTUp03x2fN3GIjFWiJ?=
 =?us-ascii?Q?WYByEdn6H37YSg070C7O4uUU0ejiUOmCHCHaN6UaJJkJBa1RKaXykzbH+Qa2?=
 =?us-ascii?Q?YdeKOwuYfID9s6b6w/YmHBsPlV3k2/Ktq/BjBL0bRI405S/zpWdvHGCyTEjB?=
 =?us-ascii?Q?PJrj8y91J/BmOF1a6RChhNr+FGDfHIhyMB4LkCjZnmdc3O5PKojwRZREWMvW?=
 =?us-ascii?Q?kgmAzoTkVqUxdVLUvd+in+qoM+Pr/u3ppME7p24Mqc1jscrsnFUMMLo6gFbo?=
 =?us-ascii?Q?yI/Xn2EsUagW5metjgmUDSkqYkOUMSXS9uOGUPsKWf0l0sSr+dPX7SAJ5QJO?=
 =?us-ascii?Q?/3Q/uRTHRvdZDY9UnfWRsRuKMmNa8kYona43LCbL2NybWU4EYkfMqj4qJaLC?=
 =?us-ascii?Q?/29GzStwwfFGT0XjSZRE8rcnZeNmG9dscG/vxJSX336y2sKhUyb29OilZk0G?=
 =?us-ascii?Q?uPuhMCdEtxSWnNhRFpuIpEZJ9co/wEawHhoL83hbnWCjNydW+y3+nldhjgVK?=
 =?us-ascii?Q?GEqCYHfSiy4kWjhSj4qZzwuWB6T5Oo5cKSN+HTI8/DGrcDmeMhaAH889R3WO?=
 =?us-ascii?Q?P9wQuljCgCn98ckLaLCnYYno+NuT8ox3eAUcTrrfJROfv3nfHNTTNsHr3yBP?=
 =?us-ascii?Q?lxMqWH05akNKCAscCk9t4W/TjW5BGNuQnS/eJbK/VROwkm5OfoMjTTvLXUw4?=
 =?us-ascii?Q?1z882+ApHtUlVkguyDxO+zSQAZplBJZW4tY7CIqNG+TZS5dM0jcMVaRA9S2q?=
 =?us-ascii?Q?C3VDRD+peybcC/0vzwkswfd3eEye4PtduV86onvpylRQXrRPmIbOkqmTASDv?=
 =?us-ascii?Q?2BNja2KXI0U43pVVas0UuT2NQ+rLU954t9bXABNrp9iK7r3xct1MAeFvshha?=
 =?us-ascii?Q?BF5xTgsG9NtKX0MA8jIQ2KPt+wd0yB4gBEuxgqIgNyFF8LpcKpPWkzkQRSD0?=
 =?us-ascii?Q?N+OQff7khXvR+WYCeBI5JUfNKBgdGCHKLKxX67VciEtInDdsDBajUltK0hYq?=
 =?us-ascii?Q?2E4NuCVKuWlmzd8g+fBuyDp0PAPBCSht4XKf6ftBVouOyHq9TRzVcUcJ2fZJ?=
 =?us-ascii?Q?yjihysQ6EuQIluyQunBwE5lW22bzJtIVN/fLQKX2ivX9ZYzreb0hV414tjYM?=
 =?us-ascii?Q?zw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB5682.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0146dbd5-6e76-4517-745d-08d9a76ff7c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2021 13:09:18.8085 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MjHHggLNFltheJ3LW8dMYo+qxDLeLh/cGfKifl8dAdfZzJEW6nGJT3HXlAs7xlMTKtAuV4OMYyrn2ePz73xSgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3233
X-Proofpoint-GUID: JXhBYmwqbK-Q_U0zP1962R8_0PhlNlD7
X-Proofpoint-ORIG-GUID: JXhBYmwqbK-Q_U0zP1962R8_0PhlNlD7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-14_02,2021-11-12_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=999 spamscore=0
 impostorscore=0 adultscore=0 phishscore=0 clxscore=1011 mlxscore=0
 lowpriorityscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2110150000 definitions=main-2111140077
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks Xin! The patch looks good to me. Acked-by: Ying Xue
 <ying.xue@windriver.com> 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.166.238 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.166.238 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mmFGC-00Chuk-Kp
Subject: Re: [tipc-discussion] [PATCH net] tipc: only accept encrypted
 MSG_CRYPTO msgs
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Thanks Xin! The patch looks good to me.

Acked-by: Ying Xue <ying.xue@windriver.com>

-----Original Message-----
From: Xin Long <lucien.xin@gmail.com> 
Sent: Saturday, November 13, 2021 3:23 AM
To: tipc-discussion@lists.sourceforge.net
Subject: [tipc-discussion] [PATCH net] tipc: only accept encrypted MSG_CRYPTO msgs

The MSG_CRYPTO msgs are always encrypted and sent to other nodes for keys' deployment. But when receiving in peers, if those nodes do not validate it and make sure it's encrypted, one could craft a malicious MSG_CRYPTO msg to deploy its key with no need to know other nodes' keys.

This patch is to do that by checking TIPC_SKB_CB(skb)->decrypted and discard it if this packet never got decrypted.

Fixes: 1ef6f7c9390f ("tipc: add automatic session key exchange")
Signed-off-by: Xin Long <lucien.xin@gmail.com>
---
 net/tipc/link.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c index 1b7a487c8841..09ae8448f394 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -1298,8 +1298,11 @@ static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
 		return false;
 #ifdef CONFIG_TIPC_CRYPTO
 	case MSG_CRYPTO:
-		tipc_crypto_msg_rcv(l->net, skb);
-		return true;
+		if (TIPC_SKB_CB(skb)->decrypted) {
+			tipc_crypto_msg_rcv(l->net, skb);
+			return true;
+		}
+		fallthrough;
 #endif
 	default:
 		pr_warn("Dropping received illegal msg type\n");
--
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
