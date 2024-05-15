Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 857B18C6C44
	for <lists+tipc-discussion@lfdr.de>; Wed, 15 May 2024 20:40:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1s7JYV-0007QG-5U;
	Wed, 15 May 2024 18:40:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1s7JYU-0007Q2-15
 for tipc-discussion@lists.sourceforge.net;
 Wed, 15 May 2024 18:40:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HNpr6CkO3Z3TxD8LgqRN4nEV0C+O0lhQ0ndIP0Hz6fU=; b=Vyy7lMmzhHENNVsjtUOa0x5B6J
 yuMFVQZZfZlvLk7VOD/8nskC4mD/Awy4UexSQNR5VGpwWjvqaH3zTG8NzSkd2AWu0EaWr0Qp8HeCo
 xlxi9n1dr+jOsN4h/D/5rCQdlhJUZD+S4E0owCplINPjs7HMyLkzvwirUwSS4qlPyv58=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HNpr6CkO3Z3TxD8LgqRN4nEV0C+O0lhQ0ndIP0Hz6fU=; b=Y
 RucoODOD5ynz1k5d6x2QWuZChKlnF1sH4piVqeRQZj7KjsFmRwQjWvem7GnaDKPVWPIqfPSabA1xs
 Bs500haKsRip5HSqPLmAe+uzaGvRkIvCnTHOlnIsaxauYy5BUlvQfpbFHUK71LCXruxegipRTpvPt
 /BdfLd6g1LstZ1/U=;
Received: from mail-am7eur03lp2233.outbound.protection.outlook.com
 ([104.47.51.233] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s7JYU-0003NJ-3f for tipc-discussion@lists.sourceforge.net;
 Wed, 15 May 2024 18:40:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ess1rhq2s+O0e0wKHyYnMO6Ubw7198hzckBirBgZWArnf00l9YPPrDedTcPAbzCr9skKxRoag8yj5SjG+rzn5X/cd2w8UDKjCTOIndVQBMjW8MI3ld5Savkl1MdDrRvX7J8SaFyRQIsH/xu5H7aZmajYcxBRTVgw26gDYrIvm/uy5tQ50/fH+YV0A/D9fyv5q/5jBGZuQKDl+ACf4yYQe0R2sIyyzOu6Xs36QaTpMI9zlhX9F3h+3GJQkyHBLcOZppDWggLyA7Mb+vSdNsPAbaoHTMY38ljNusuWbXD9WDlLnwA8zioZrDWTTCoySFlO1VrYa7i5PKkRbYgBKPaKxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HNpr6CkO3Z3TxD8LgqRN4nEV0C+O0lhQ0ndIP0Hz6fU=;
 b=k+N8uTx/p3v4GACcbu1/l4gwopqNCv+3QnDr+YlUyl/5cB+AkKAcEJyly8mmE2mCggg/Hyb15dcKo7tpkW7TtHL6tb2AlAbpZme+5lyIoNolsoHI8ehHdHVvKUg38TBBuxkmBtT3L3DB4JeQLmxjvIn7P7uM+AgRKpE7xbtJ204aBE60bgOrLdx52zybwn6S5Ftp+RTLB5bUfHhPqFOgE2TFUojGmCD6JdF7xD4DWt+YeyWjv/jKn3tpgygqSQB5MGK+uHKOHP64KMycvF0uLijvk7ZeFibkizb9t30YcQddmVJYo3MJTGdJxo6doMDZSOazTDxfbCntsxkjQwYELQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HNpr6CkO3Z3TxD8LgqRN4nEV0C+O0lhQ0ndIP0Hz6fU=;
 b=3fmk76xl+KaonhY8uJmG5gdrujZ38ySa1sdYjK5NQ7+bKhuqMfR6nv8lLK2clViQ47UXDvZfqZagKwEla72x5bxJQ4IC+2MzWhiN1L5/yg8AMRNrMXB7ifDdidnTIqm4BKz6sHRkRmQaizT8XdO2UYv3mXGZzNx+/0u2/xKU/Pw9ma5uUdKDoz4mQ8q9d5blvRy2HhRA2tJ9VZgTFQdIWmboV1vTEpmVKF/0WDCiiR4iPrnqZOxzjtgMEeEb75EzyoqQY0FBnFLDSBeYthtz0kfFmMQ14tujBemniVn4Lwi0eUHoHoPPoLMm7dRSaPgGz/da9wENHO/ybFDHS78CUg==
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com (2603:10a6:20b:527::12)
 by PA4PR08MB5951.eurprd08.prod.outlook.com (2603:10a6:102:ee::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Wed, 15 May
 2024 17:07:11 +0000
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::3d69:5c73:5c95:f123]) by AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::3d69:5c73:5c95:f123%7]) with mapi id 15.20.7587.026; Wed, 15 May 2024
 17:07:11 +0000
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Tuning/Debugging of "Retransmission failure"
Thread-Index: AQHapukIxgkrhGtsxkqoix9sU9kkjg==
Date: Wed, 15 May 2024 17:07:10 +0000
Message-ID: <AS8PR08MB77674C4B42FBC0B2F9CA006685EC2@AS8PR08MB7767.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Enabled=True;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SiteId=e3ff91d8-34c8-4b15-a0b4-18910a6ac575;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SetDate=2024-05-15T17:07:10.704Z;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Name=Internal
 Use; MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_ContentBits=0;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Method=Standard; 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fisglobal.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7767:EE_|PA4PR08MB5951:EE_
x-ms-office365-filtering-correlation-id: baf1eefc-5adb-4a36-8cf7-08dc750175b7
disclaimersource: eop
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?Windows-1252?Q?5kmBcSPB9bLTQNecY4IgADZWJseBcBe8xnm08u7uwbY8yKYaMKxJdURr?=
 =?Windows-1252?Q?4I4uqi3XAnS0GwZJ8Tbks4QEE8/IVmEhoPnDBkGf8sgcCCPpTkBvpNls?=
 =?Windows-1252?Q?vjDCn8g1yPv08COp8ioF7gIamOCPmX7xhf1aR+eXHaN84hZYWAATkcXY?=
 =?Windows-1252?Q?463ldobNTBuwbAjnCrQmlpUlxTlyzhyVuIOzTLAs+0NjXSSWIAzJakcH?=
 =?Windows-1252?Q?CoC2hbCIfM/y9tKApPnMqj54hXSXPROnhY/oVOL7RmFrccAZoMZVy5TL?=
 =?Windows-1252?Q?uWyDdeau3B8njzHdiroeDFlsm+ySzfLX1exZT93XsIscs6LCMm5GzAlo?=
 =?Windows-1252?Q?Jy0m8jFL2z1Dk078VkvBabCyHubcGs3YKmNRrHpj4YHa7PvLeaesF25d?=
 =?Windows-1252?Q?yFe0divuXylYtunpDj0VysjvjVuGv7MUAtqB0PiAU0gLQlGs+8M2ZIse?=
 =?Windows-1252?Q?UP3faIVIeenSZQZaa0t+AOjraco9F7VJuZzMStU9zS9zbfo9Stjz7Ti8?=
 =?Windows-1252?Q?zJLzfwDU/w2AVdNksfCsrWeDxPBUe0iemBBLqn1ac9lWuL/7OZoogROq?=
 =?Windows-1252?Q?07fQBsMWeI40rLjcJGqAMMbpyeD7iAoFh3LfDQ7jYM9rG37HC1CEsnpX?=
 =?Windows-1252?Q?fymiyx27tkMN1uGaj7xQewb/vksPN7bWHrQfE47uh+ZcYviw+RHyTZkv?=
 =?Windows-1252?Q?EX3k3HHtNC8naOeonpBmObMfKH8jIx5ieZO4QKS34CV7dSpj3kCdhLBb?=
 =?Windows-1252?Q?zcH1SuLQyVe1q/P+LIdvPiCNIxzTzSmMpv6ViMyPl5k4rGMJNp4O+gEN?=
 =?Windows-1252?Q?XPpJ+rLP6rFMDLVRcyQ1g4n37JyKdxf+w3GmJSI97NuMZksNibo9LzXZ?=
 =?Windows-1252?Q?ursFb7ps3sv1Q0MOstpbfLm8bpti1apbY2ReWEbe+39Lv//sEv5Xtrae?=
 =?Windows-1252?Q?N8xlF1v0eiFuwzl0fGJPTdzBmNb3eleTaI4QOmedG7QL5FNbG5N6xpvj?=
 =?Windows-1252?Q?tCrNXtvxiO5uUtuO8sUBOG5KGTDiReaLoE/RsAOJlHyzFk2b68+gd51d?=
 =?Windows-1252?Q?keQzuSXR+MHVb63v86QchI8ROz8QzkYCgLSvHDqU//GJmIelyKEciqPt?=
 =?Windows-1252?Q?eyPlK/CbP30cX3wzevYQegyWmjcxHcn8/z6W2SuFQi+oeAwjQuF/mMlm?=
 =?Windows-1252?Q?st4vPZzeP9szU6dGpzFxwsvgsuVtWvUexK5dMRWKFl1Bj2px5kcLF96j?=
 =?Windows-1252?Q?RvMyV/hLHI2WG8A3GNRndQWjmZLXB+rgZTRnkOjj2T9UPXBz5+tTYF/w?=
 =?Windows-1252?Q?GHo+embp30avuka06CcBKrn9maAhTcYiWydv0Hhe+uwD6pg5BE1l8WhM?=
 =?Windows-1252?Q?8cgXMC/8XWk395Qrk7bdoFmk9dRBCr3NG1Z4I9kntVAV+4yPH7ZmvFBU?=
 =?Windows-1252?Q?1JzZjhzVYdsFRsbL1eskSw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR08MB7767.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?cMMebb0XUnGgL8XoT0lqaZ5pPrRn8/6Hlb1ZDXhC20HCQEYOcVtYOpKJ?=
 =?Windows-1252?Q?Gv4LmnIVl6SmpBs4du01r+m+xu25kQzippr/lO6EDi+6WCq39WqEiTty?=
 =?Windows-1252?Q?XBJ4Hde/DU2bFaOZnbMDFhTTNYncT2dqO9J0Q21EMaaYFn+X9pkHumOd?=
 =?Windows-1252?Q?Zv/HrjoaFHDG9SG+XhShar3No610HgxSviCztGGI6J0ZX3cbjS67i3y6?=
 =?Windows-1252?Q?ZbyGSQ3H53VYIpTvU4rnNAA090EWJ6VkQJGQ535CaEavI35q+nxQbQyQ?=
 =?Windows-1252?Q?UKIytlut8kA2UxEALmKzXozqNJynSOL9IROQS9N5A0yJ0lHOX22NqOsS?=
 =?Windows-1252?Q?Q4DPr1Id2SdYn3vl99GelGBonYXnpD/CPtgLOt74JXq5s40BHrjDRHhZ?=
 =?Windows-1252?Q?VRKxc7isve6aWYFwB3rSOF92Bfe/OURLN9X1KTuBuwkZoZeQzKIhifTJ?=
 =?Windows-1252?Q?8Tj2Aru7tzT3ukepCLC+wGAvBOV2BXKa7iV/KuzTH3KFZky+q7mfALEr?=
 =?Windows-1252?Q?CoNdarHs9M4u3P1YoxcFmao+hHOuzN0BGVmOyg30ae3y4Mfz6iY8xXDp?=
 =?Windows-1252?Q?cHGghOLvNWF5Sp0xHa0x1GxWPF2pvU/dxZcB8T1M5zxTAVftYDXf4Fb9?=
 =?Windows-1252?Q?I/V2AdB6Tg1vINKT+jYfeTPFwA/3rR9zHWXuOi3tECl/J++72wSJPpoW?=
 =?Windows-1252?Q?QiVGlvaxrIMUsaGOHASIINIWrZtxqy8OElcvm7r6yfLYFp0fi48pG7TK?=
 =?Windows-1252?Q?Abx4LuoEfuMq7pbW58NTmANsHaMk3YAcWn8SUPX6oC+yh0NozHOzUdHP?=
 =?Windows-1252?Q?K7vvxs6l4qiOCGSC07mGE3zWGXDl1ezzvQBQmk2ceJiDNk23L52njHb/?=
 =?Windows-1252?Q?K/tTeoxaRP8HGp8gKvpjixJzPs2lqpltzpBAW9+tpLKvgGUIIk/Kype0?=
 =?Windows-1252?Q?9X9ILlphFVVJcY1trYh1UlGAQ1eEXMZoMeo/28K6gIwln8RiEUqHYACc?=
 =?Windows-1252?Q?1kRSu3q4fRpu5Vm684pW45sb89cpE8IKqRgiM/MqMSPVaaOa5M3bioXv?=
 =?Windows-1252?Q?x4ELqiWCfx51kl9CbAaEyAo5YE8WOyD36n3aCTugMDEiOvrKgrixP40D?=
 =?Windows-1252?Q?WqSy7QUQ8Z+VuSD3OTzB3a6PnYYDkwL14rrqqon0jMzl/hUHWIT0ogqL?=
 =?Windows-1252?Q?Q7dCPkFMtqqzk5rkVIvvR2McLM8ef68Dvbt4qcBOMY06JGyKoXo5NSlO?=
 =?Windows-1252?Q?6RrYzT/R2+qjPsbq3NsUtkTSC/5b92OmbdnZtcFCzQmw8dwW/Sj0YtFk?=
 =?Windows-1252?Q?GK4gKyHu3q2veuuoDPc0J2R59INGMEMR1EAy9df6E6PZwp2jSMAckWTx?=
 =?Windows-1252?Q?rQliXfPeiMKXwjDGGHkv9h+fJu4gIME7p2hMCqgQshv+RmqvSyjBOpZP?=
 =?Windows-1252?Q?TE4g+9CgG71dkEDcUIb4inGa2TWK5UxPC/DPZgA6A63bBwdv2oi+P/7D?=
 =?Windows-1252?Q?T5JvDTpLIkzILar5VGoI/Ibr9TxK9pBn8wdIonYpkjAUr7E/lBe5ungl?=
 =?Windows-1252?Q?OqCK3lLRZrHOIFBcgZ4s2C58SZvQ2+1D9HCBq/IdBgVZxnObzrsYXBBQ?=
 =?Windows-1252?Q?3FdkuAdeHeUbbTIhFBtSe1ReYBa7g2Ix8YAj/hInV7BCU2dD8TdJmhIR?=
 =?Windows-1252?Q?BA1J88M73Ffk6XEdP7/Zfrfb0Rnq10kB?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: EPKXfrKWbPlr6R91hNOLZltlyKHqOz0fMPKhmDFDG2PFi0Of9Oo9kszJLrjDIIErarU53wqH0kDsbis1Z9HXE5uqJ/zG2YBrO8QHWC1tW+r8F/3sGxxMs/yz8+8VIKGfTezpF0x/tuC0/5ndYEvXDFbyPAo8YIe77ILe9+nsUVlD38iCttzZZi9zMbRummXyj0XQfxJ9B3eC0s7eZrxmBRNGjfLF3HUICz2lfuTevzd6o4HMnueIf8LHAFUQYXhMkUC4xTukAoKcTxJN1ESQ4zsOJjU69GiAr6DCEBvc5CGsbd+5qVYk62AaCrfq4YUm5YcOqA3by68dF1k7UV4Ag9QpYvZYK136HPPlzyrcZyerry+s0L75j5FZPlM2l5J4kzUtg2zu6GkdAR40mpY02rKo4jkRhcxE+GcHxufmmBiJXzahKrqIlK0kzLY4GiDLt5qNb0GFA35e6lDq+XG4IGDGn8u2rvInHH3TavXe/xjbdwcnqeLP9JVUoj2SFuzS+lgxgmJPaQmD8Qw7QDAjvcPZc4dqFnd/BjNst/zOqhUHrArOvW29srx08sm94+lJE9fF7XJy6KGQjGinsF3NBruFF2LRl/XsJrkC4u6kgWyxBwLXfR+YpPW5LcGZN8GflvBr3lXfGuOsPM7xa9F6Kw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7767.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: baf1eefc-5adb-4a36-8cf7-08dc750175b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2024 17:07:10.9955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dqjq23AvbajP+ZXiwyJgSLbVy1ViFcYsUm8qlMblPiGRRvraOpe+uDiVRf8dg9+RuZ9lVi6H8y4dEosM9QVo59Wu8vJRk3WOLizdbu64jSo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB5951
X-OriginatorOrg: fisglobal.com
X-Spam-Score: -7.6 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I've started to notice messages like this when pushing TIPC
 a bit: [Wed May 15 11:27:32 2024] tipc: Retransmission failure on link
 <xxxxxxxxxxxx:deb03-yyyyyyyyyyyy:ubu06>
 [Wed May 15 11:27:32 2024] tipc: State of link Link
 <xxxxxxxxxxxx:deb03-yyyyyyyyyyyy:ubu06> stat [...] 
 Content analysis details:   (-7.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fisglobal.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.47.51.233 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
 -0.9 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1s7JYU-0003NJ-3f
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Tuning/Debugging of "Retransmission failure"
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
From: "Duzan,
 Gary D via tipc-discussion" <tipc-discussion@lists.sourceforge.net>
Reply-To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

   I've started to notice messages like this when pushing TIPC a bit:

[Wed May 15 11:27:32 2024] tipc: Retransmission failure on link <xxxxxxxxxx=
xx:deb03-yyyyyyyyyyyy:ubu06>
[Wed May 15 11:27:32 2024] tipc: State of link  Link <xxxxxxxxxxxx:deb03-yy=
yyyyyyyyyy:ubu06> state e
[Wed May 15 11:27:32 2024] tipc: XMTQ: 15 [30965-31149], BKLGQ: 0, SNDNX: 3=
1150, RCVNX: 27685
[Wed May 15 11:27:32 2024] tipc: Failed msg: usr 12, typ 0, len 13928, err 0
[Wed May 15 11:27:32 2024] tipc: sqno 30965, prev: ace568c, dest: ad7f568c
[Wed May 15 11:27:32 2024] tipc: retr_stamp -1697900680, retr_cnt 73

The host reporting the problem is running:

Linux vlltcgtmdeb03 6.7.9-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.7.9-2 (2024=
-03-13) x86_64 GNU/Linux

and the other end of the link is:

Linux vlltcgtmubu06 6.5.0-27-generic #28-Ubuntu SMP PREEMPT_DYNAMIC Thu Mar=
  7 18:21:00 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux

Is there any tuning I can do to avoid the problem, or other data to collect=
 to better understand it?

   Thanks.


Gary Duzan

IT Architect Senior

GT.M Core Team



E:  gary.duzan@fisglobal.com

FIS | Advancing the way the world pays, banks and invests=99


The information contained in this message is proprietary and/or confidentia=
l. If you are not the intended recipient, please: (i) delete the message an=
d all copies; (ii) do not disclose, distribute or use the message in any ma=
nner; and (iii) notify the sender immediately. In addition, please be aware=
 that any message addressed to our domain is subject to archiving and revie=
w by persons other than the intended recipient. Thank you. Message Encrypte=
d via TLS connection

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
