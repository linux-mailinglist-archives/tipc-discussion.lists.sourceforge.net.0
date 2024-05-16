Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 438EF8C7DCB
	for <lists+tipc-discussion@lfdr.de>; Thu, 16 May 2024 22:47:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1s7i08-0000n0-40;
	Thu, 16 May 2024 20:46:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1s7i06-0000mt-CP
 for tipc-discussion@lists.sourceforge.net;
 Thu, 16 May 2024 20:46:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+q+zph6+Er6pO00k8siatWX3m6X96f4+orQd20RtFk4=; b=CwxLn1lyOLOczTigNmd3GVNeLf
 GQ9t9yaZkTnc1Ovwtc61+gzzBwF4FaDPCTfZONv71hsLBjpEU8at+U7BDcPNgObx8WNnQ9YGie9kA
 +0xZouWIgdxYgeca4i4Ix+l3rUCrlnkZpNOP3yalyw5XxtHS5j6ydu0IG16yzJayB014=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+q+zph6+Er6pO00k8siatWX3m6X96f4+orQd20RtFk4=; b=E12t6wZNyJxtAoNhOUGLP97SzQ
 gJjXHN+D4arl36+hroxpWFElds7swILSpG7SIM5053MxdZeuohGYN/pQh2JqVpVKmzivcHTZPuOTb
 ZI+zDC2Up380mGrMhxSZXKANuckqFs6KuuT0+FX4bCuRuYbykPuShwh4CM8Bj+lv6NdU=;
Received: from mail-vi1eur05lp2169.outbound.protection.outlook.com
 ([104.47.17.169] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s7i05-0000IA-Cp for tipc-discussion@lists.sourceforge.net;
 Thu, 16 May 2024 20:46:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z6iQ3lnQt31FhirCSsx553FZuE3UxkttBIvlvqGA/SxGlvYG6mRo9nORJ8TMfBnS0R0IsVR5vL2M5RJc+aDoCI7pzRKH7yfy0cdDj9iaCijGaiK1idCY91fqFVHoj5pPPsbMYuUqyeLKmE+C4MF/81msU5sSmjuBi+SmDLH6pts95ALik4R/H+llA3RkHU1U1K52AhoXGmXdvgsPTIDTKVs+JiROKC//k44bdejTv4zkitmiimHcbwodVPDkA/uZDqt4ndHhqJTxT31jP+naKa9WdE8CctE2+2FbDkP1j0LqgB9DoQ4527hvIqORs8aR5xvfTZ6Pzb2T8PTZHhTiJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+q+zph6+Er6pO00k8siatWX3m6X96f4+orQd20RtFk4=;
 b=MxkN+fqY6ZLAyqW7jy28PXOltdiPpZztf91uZJN/5I/YWEzhC+IF4mjih8KUhSei9mJBxFID/2SWra3KJFrZdIjJ0V6EasD/cFi8HYgEFURE0CDnhnlIW+FFPZ3zpO0jVMTdPizlg0GJKWq1mGyjOtLEsRIeyHGE1hoZqt7PkazsWqPV1ub/sd7+5WvGgmXkLEGwVL6kgiRb7p+KibduR/2jz/T4osOtVuY8zdsrNMa4mVL+jpLovSDkFh2PDHS8L2U10eeLYLZAygpm/4mPZ0wEF/+u5UdhJKWmLXDyhVs3RyZD9LrsipPWIYplDlzGxzlwaRXZDA18+RJPHoS5AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+q+zph6+Er6pO00k8siatWX3m6X96f4+orQd20RtFk4=;
 b=MDiH8hXyuAy8/K2JauyNhdAos6TfT5FB4N+OAVyUkoelbftcSxe/ulzb949YFLDemQAfXe/Toa+/0IpXj/GcQsa+3eAtd5TRmwXbiRUC5t/u6yaW+kSHaqcqQfLOLlJSIqBMnx/SgLxGzxVPTNp8faJcl3CMoUvdNcL0SVpgoijuwMu0G3wGd9gygKGZEV/aBM9OjVHeOLGdZvuem3FD/jtVpeynMFrVA7MPS4DrFzmlbMa6OgwNQFmIjWviJjk5ndC9pL05TfL3t0OBdnYvaFh4Zesqxy7lu9XBYisHG6idbWdHT4FlQfbX9gMP9Bt8IjmAOM/FOJ3LYigGKPqdfQ==
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com (2603:10a6:20b:527::12)
 by AS8PR08MB6440.eurprd08.prod.outlook.com (2603:10a6:20b:33f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.30; Thu, 16 May
 2024 20:46:39 +0000
Received: from AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::3d69:5c73:5c95:f123]) by AS8PR08MB7767.eurprd08.prod.outlook.com
 ([fe80::3d69:5c73:5c95:f123%7]) with mapi id 15.20.7587.026; Thu, 16 May 2024
 20:46:39 +0000
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Tuning/Debugging of "Retransmission failure"
Thread-Index: AQHapukIxgkrhGtsxkqoix9sU9kkjrGZOuiggAEBGjw=
Date: Thu, 16 May 2024 20:46:39 +0000
Message-ID: <AS8PR08MB7767A053713538EF6655FCB585ED2@AS8PR08MB7767.eurprd08.prod.outlook.com>
References: <AS8PR08MB77674C4B42FBC0B2F9CA006685EC2@AS8PR08MB7767.eurprd08.prod.outlook.com>
 <AS4PR05MB9647BA2684FE3CBEF9D7025A88ED2@AS4PR05MB9647.eurprd05.prod.outlook.com>
In-Reply-To: <AS4PR05MB9647BA2684FE3CBEF9D7025A88ED2@AS4PR05MB9647.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Enabled=True;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SiteId=e3ff91d8-34c8-4b15-a0b4-18910a6ac575;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_SetDate=2024-05-16T20:46:38.754Z;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Name=Internal
 Use; MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_ContentBits=0;
 MSIP_Label_9e1e58c1-766d-4ff4-9619-b604fc37898b_Method=Standard; 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fisglobal.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7767:EE_|AS8PR08MB6440:EE_
x-ms-office365-filtering-correlation-id: 1372152c-faca-4032-0c40-08dc75e94929
disclaimersource: eop
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?iH51oVXVxDNIb9ARAl5bFqUdtXD1pVicf46zyvbBday4xxAbXoLf/8n43ORI?=
 =?us-ascii?Q?qwfHSc3dodU12+Q2fU6ZhkHa1VUW2ojyE7OWBnkdZFhB0/5HkqaY71LVjZYG?=
 =?us-ascii?Q?Mq9v1Dqv3p6gRPZPj4ZP/0GpRSrdN0mVkH/XkU2OZJ3IlR1Yi2jE/C/Q5IXi?=
 =?us-ascii?Q?jsQ4ccB40MAsplfYkAyLjUx18gFwiR10fLZSitauJTidwcnlSPW+Lrn5kcwq?=
 =?us-ascii?Q?4ddNl3ACUynrZOKAh7Mvu/lB55gyWrRAIrJi5h8D4DTNxUnZd6Vpcwet6KbA?=
 =?us-ascii?Q?7uqIe7WmOlKQuNmwMFnybWFAbbim5BCrgIlB1t1zrfYV52L3gwKrifa/yHUz?=
 =?us-ascii?Q?2ayY8EBWw87OsqQepFmjDuwSYaRXBXhDQRmNjSpHfevOhFTYw12CFXt0WW3h?=
 =?us-ascii?Q?oC0Ium1k0YJE1m/zOsE3AK/og52gN71wEGKmc9HruSHTMUFsBfUzlOnbfgen?=
 =?us-ascii?Q?l6ZsG+lHzIWghoS61nuKn+bn3nbUSf10+uqKB+JxZ0XI8rU3bem+a35QJWDh?=
 =?us-ascii?Q?8/2aKojTlf1RWmENahCWCPPusiLKSURQp0lhgDQITdOOw6edDELwfkOhObZf?=
 =?us-ascii?Q?1ZTDepkEarTUQJb39sLGg0LaGiintaTj5FUfe70n7d/3ueW5gFarC9GcMfA3?=
 =?us-ascii?Q?xYf7vpDSbwp5EhaJAAB1O82HrHT0ihlTmdIttIN/wPrMydbHWw0JCCLId+Pz?=
 =?us-ascii?Q?ohjDCxj+7U4ZmFvU68C+j5t7aL5mcZ+nZ3NgcV7zXu8Kmc6Dv6HxuU0PFp7D?=
 =?us-ascii?Q?mgb+VjmvV0Vkw2zpzTXGftL5bZLwtpalyJyd3TljJmZHiGB8tWMZjm3JbKpf?=
 =?us-ascii?Q?oSoMl8iwRJcHdrVSncOYWan+MSkAvHpYOiVCewSmA7DSU6c9ShnnIvsWPI+6?=
 =?us-ascii?Q?CCeGnfcC567jcy8GyMGYgfU1IeOuYAzCDme0e40lFquUjFO87LalKVNQC8Bx?=
 =?us-ascii?Q?jl5rmgfe9MN6tWYMjN9HKJcYq+Jb94Xg9R/7FqS8oPzFc3STcub07Sbb+kj+?=
 =?us-ascii?Q?FemYzS88I1LetCoIbq8C0mRLrBLJqgTKfxtNctrEvYtDGWDaKv+uMj8TqrjC?=
 =?us-ascii?Q?Vx9GBv5xFaLXrJrLNVlvXEPNIQ3vfmOckqyXFed1a1DvcWLRwAi+MuQaf4NB?=
 =?us-ascii?Q?OzSgfIo2Le5OV8kS+KO34MguNnIjavfm5Pq4x0SfNX2G+6POxcsSrAN4eHrj?=
 =?us-ascii?Q?LlEWh6GtX0/mkRIa/tAPc48anm1IXLRGz48vdztfC+vmiMAYnwQ8NGcf6kPt?=
 =?us-ascii?Q?Lt750V1voVHCvCFkalp5BQHazuRxQWD7Fx4+Jxfqw1mo8hs1C3uklFfBJMx0?=
 =?us-ascii?Q?pCCnJrYpkZPsxUNzAmFzCvAiQIq8ohnkHSXpWT9dxfRYXQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS8PR08MB7767.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0lJ9w4/fEFlcwxA9NajxJfm47/TUC3kFckCTdZtKAZLMwaVyLy9Wn9A9g5vZ?=
 =?us-ascii?Q?DCB6NhqsLY8ENKoOWSrP7m9wwDZjBgFnitfyGImrRRNUhIGCXEPns0crXZP3?=
 =?us-ascii?Q?RITmGCPsjEFcajgS77GW9wm4F4MLiQe7za682R2vWkv/xqdkLkfOMqnKH7k0?=
 =?us-ascii?Q?k5fMRWotpEuWT9gi35lMc522YdZf8VnHeED3mpcCpeRHaZTXzQSMFh9+PFJJ?=
 =?us-ascii?Q?auLmsRv5fhMUOGQirT7k6YUt1T5rdLN23wgKfD5pBAQrfggAL20IEQULIU4c?=
 =?us-ascii?Q?4DwzHXeaMudjNfiDs048RGAymvORdgMBvbRasYtQZchNu0meTnc5FTK49Qcv?=
 =?us-ascii?Q?syuF8oNoROZ8J4VafT9OhZ8zLofw7NxJoJ6n931O49VRjY5HoKFjKDMSISxC?=
 =?us-ascii?Q?Zyjkq714+MsTdvETgDPoOOvPA9vmtDS3Tos+yuoSUrSF+M84ofwdGbBBSHFR?=
 =?us-ascii?Q?sXB2SxM+ytPd/9huSU8NKD7jWzypwdwk3oS5H+xVpfdCSvLEWz7bj1IhIimo?=
 =?us-ascii?Q?WO5YliXLXvM/kEewPefGMKfwxS4VsnFIN+vk3GJmFlmpym2GoRyKCM9r//vW?=
 =?us-ascii?Q?wnsTVERwncmfI6ic/3LNqBmqV0gYByARG1CrROQpzherZSV3iGT2NEXJAlcy?=
 =?us-ascii?Q?H7E3Uu4QiCUPyv1Na9MwbNfNTdLDhJs5ZSILSgTugs1aGsd/o70uR4Se4gvV?=
 =?us-ascii?Q?4RC5X8sUIoptvlHDB1jAFokFyMfCuZctDkJQOpudPuYs/OZjLizHCo/rv5jK?=
 =?us-ascii?Q?Ee0L6Y52UTpQ6ftnKT15iWmFQAdNhDdAla5oXmCS8DH25KKDpch+xTTlsiX7?=
 =?us-ascii?Q?8Z0eOj0oPPYuIs2Q0Aj6PiQYAKzYY278c0ytsnUZZTV0GQXAx0Zl66nKcUPT?=
 =?us-ascii?Q?KMeF6X8JPywt1tTKhzmtgBY1Yet03vIcVPxyLG44Z1VXKutTCqBWwOhvevlH?=
 =?us-ascii?Q?Sp3PvTy2u5GbCibTxlkygXPOmJoPGQTi+3uOGffikE44xe9uZj5h70wKl2Wu?=
 =?us-ascii?Q?JdYBZsstAUgoN47dkkvhsdkPJgdewnqWSpqqO8JR4SYb4wwDdb2J3bZ6yaxF?=
 =?us-ascii?Q?PCa+8BKJ8wfSQi+zNxQfqseG6y1Bi/qbnpiu7rvhuHNrukhk/2567TGoJQu3?=
 =?us-ascii?Q?3tGyhSEUYOX5xnys9spw+CRbvVQB+8acdSGUNQYTItCfLOZ+uRoT16EJzO/b?=
 =?us-ascii?Q?T0fAvhrXKQy+WFBRE/7v0oBaQxkh/QIyIJPhw8oMFjvg/IQDCjXPcOk+eItj?=
 =?us-ascii?Q?RgmblzZ6N+hN+cB/h2fezo1M+mVPYBgQ9cFZ8t2z30gQw+f61HbneG7fV0gq?=
 =?us-ascii?Q?IbZTciI59i1V0VB1rjNwKoD0zBbwKS57+ys4O6d2o51sU7XQFcs7XhXa0o6t?=
 =?us-ascii?Q?7viX0XN1W0MViAAlO1DZm59B7tmq2ZY/PDEmlDNZJkq8pV8BDKLRp7jHBfE8?=
 =?us-ascii?Q?UpdkfdCs8OC4JjHUKDD5k7b8Sy9EblWYe+QkQn2z06T5N1sDUgQvlxyZdQ4x?=
 =?us-ascii?Q?gE0FF0wyQfvH2XVuIxaPyKkB+Qs9bbfwHbPgK3ga2sJzSEINgcmygyLlvhI6?=
 =?us-ascii?Q?woBjgCfgMNizULwfo1dnYoQbc2rVA8DaIGbJuNeH?=
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: cBe3VL1zXywPzPaJu964c1ztHhleRqcZVn4ecXTXyzj8OTrOK1avzGMrhLnfshvvYw8ctwjcngB6sb4VQeCw3a5C0qjyED1NfLQnsv9sqGPi1vA4VnZLQk2K2aINFvzpg8C1KdSKnoJKAkNyljPEMDWhlxRofwqJIHyEdCLzIkW54ZYv1yNtNI8tysh9StQXyMTZD2u5xhhP+5CmvluEipU34ZcQRwagdlWfGIUqU29YdtLKLYL7jCSczbosmzg5GWpn9FLlyrqJSfzYx0pTEYMvB0TXKA50nnZVw21d4eJ2qd2xOn2VGJudRyW6Wa7bnRiZcv12D1epDFUvmDntLwP7SK0ZYDA3+Z1BLQjOefBcbEIAcLt+wj/3oFh+WV6IkcHPXsFbscm9rkEH7GZoIKV2tBEsefu56fB1xU+4Jz5IgI7Vo+fnRed6f2U1QXwncagdpP72LqJ+2bK48Pa6BQA0c8Q76VJ0yDxY6CpedXU6tp3bgQJvQ0qeuiz92M549VAFkgjUVtG3QPDZBTWQKULWGUiGPjdmg9JkuK+FRpOK5uhQb8vYA0nO1VuL3gG79CKL0tU6s3hre30T/0p4wF2N+dhT5VMkZHCArSdzBRlTHuSHi3R2qQVUhiqrq+6pGm0wMnLsdtPOQOnrNp3VLA==
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7767.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1372152c-faca-4032-0c40-08dc75e94929
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2024 20:46:39.4773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T4Hdoge/kxlIOaw/kPHUq8X94DGIS1B6yEH2vnsI1ilLEIlyn4Nx/NXvb+FOJdAnhFPfPJ2ECcJt0GG161jc3/+r+tyoOTK+DIk8f9puHS4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6440
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Tung Quang Nguyen 5/15/2024 11:56 PM Not sure what you mean
 by "pushing TIPC a bit". If it means dropping TIPC messages,
 then "Retransmission
 failure" is expected. It just means that I increased the a [...] 
 Content analysis details:   (-7.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fisglobal.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.47.17.169 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [104.47.17.169 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1s7i05-0000IA-Cp
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] Tuning/Debugging of "Retransmission failure"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net


Tung Quang Nguyen
5/15/2024 11:56 PM
Not sure what you mean by "pushing TIPC a bit". If it means dropping TIPC messages, then "Retransmission failure" is expected.
   It just means that I increased the amount of traffic across TIPC in the cluster. I only noticed because it appeared from the application level that messages were being dropped. I do have TIPC_DEST_DROPPABLE and TIPC_SRC_DROPPABLE set to zero, but I just realized that I only have the TIPC_ERRINFO handling on one end. I should fix that.

Tung Quang Nguyen
5/15/2024 11:56 PM
If you did not intentionally drop TIPC messages, then issue could be due to packet drop at NIC (in your VM node or host or Switch/Router etc.). You need to do the tunning at NIC.
   Running some more tests, it does appear that my clusters of larger servers with eth bearers are not encountering this issue, but my clusters of smaller servers with udp bearers are. There is also some disparity in net.tipc.tipc_rmem settings, so I should address that.

   So it looks like I have some things to try. I'll follow up if that doesn't address the problem.

   Thanks.

Gary Duzan
IT Architect Senior
GT.M Core Team

________________________________
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Sent: Wednesday, May 15, 2024 11:56 PM
To: Duzan, Gary D <Gary.Duzan@fisglobal.com>; tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>
Subject: RE: Tuning/Debugging of "Retransmission failure"


>   I've started to notice messages like this when pushing TIPC a bit:
Not sure what you mean by "pushing TIPC a bit". If it means dropping TIPC messages, then "Retransmission failure" is expected.
>Is there any tuning I can do to avoid the problem, or other data to collect to better understand it?
>
If you did not intentionally drop TIPC messages, then issue could be due to packet drop at NIC (in your VM node or host or Switch/Router etc.). You need to do the tunning at NIC.
The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you. Message Encrypted via TLS connection

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
