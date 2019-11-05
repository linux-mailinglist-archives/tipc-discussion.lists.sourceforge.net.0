Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 527D1F02B7
	for <lists+tipc-discussion@lfdr.de>; Tue,  5 Nov 2019 17:30:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OzCsgdj6xeCdxy8iaNEwxYneRDkp5/Yv7EBW66Ez5J0=; b=SzXEy5NsmWxw3cmIZeOF/m8VUG
	vvKpZcMQKpQBxPretcUN5azbeZ36qVEpMo5tfb5XLbNtT4N+RRfhTVcu+9D2sMnC036DxYlO3acDs
	VRETggy6reLxNztks7CSiihJj+YO5Q5ld4lrI+fjLY3Slg+Y4xlMJU3LDSy+fR09JMHo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iS1ir-0000C2-7B; Tue, 05 Nov 2019 16:30:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iS1ip-0000Bv-SI
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 16:30:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y9sbJrk1Ihxk7JK7nZ037K4AV5LLVPGUa+y088erAoI=; b=hd7IbpmpTl8Y2BayI2i5RFKY6r
 dCQ6OtKRGXcL7GhExTndyBxQ50LrBYacEs0eAqObhFKQhiCm6sqdin8/oT3kpU0czVwPELPemm5yS
 Omr3gKhCjcX9nmQxAmAmk0rsIeMt+my3TvpGLSheyuzORlwd+Z37sdhTLGKaPBKZNexg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Y9sbJrk1Ihxk7JK7nZ037K4AV5LLVPGUa+y088erAoI=; b=P
 KZsDA33Ioud6HLSX/M1lIYAcBa8b62PLfrgcuPoF4vSCPHe33znnrCvaYGk40P/TQQj1VDpfZsaGj
 zZbGZ952IFxUnFtULW4z0Cymbg/HQs+oiyRWipbh+Jwo0SkHARq2WBlqQv6VqCXuTh6ZqU/ZDY6Gf
 wYF36fo/8w0XIyY4=;
Received: from mail-eopbgr700058.outbound.protection.outlook.com
 ([40.107.70.58] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1iS1ig-001THb-Ng
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 16:30:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ci+JiPLsjtzZlygGSxfdf8GKQ3p2bJD0sAXe0UcPwq2SbXllii1E+jUh6Epv8pv4jn9VReS3wZ6aq2v0934YOZD9r/+eK8qy6dNDIR9SxihziVNif8jvw6taXd60n38eKGpqn9aPZw5m2jnDn4w0N+7zxhBpygxgHOViRhCu6McCb6MM8HC+QAoiaozsYPp7TBhtNXc+Cd/0otxcjuK0OLBqFnXpvFMU9Z68i2CfaykL5l/RPDj8uH3yxeFmB0JZMrBmWaMKvwD+XE3Qj00Mo0yg3cpncgoZPgB7AyRFr8/ToYzgjw0uX7RlARC/Z1KwZxMfr7a6QngeFaYvOnX6iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9sbJrk1Ihxk7JK7nZ037K4AV5LLVPGUa+y088erAoI=;
 b=MDSf5TnaSECir7EY5egpB/KCjuJcD3A0aAxidMeo+7Mi99MM1mbEIiYHaVGWNLEbWvl2Jw9detIrD4zw3vCjBqnIl0btvxW9hNa60qa/wZjqnqFMqGxo9bPnQwQO4PdaU4Nb4mjiPVZc2X9tR6qaMuZBBcturokBS4hghdhYEK/ppG+obao5B2sGMGjD0ORYPtJ2mRoJDFtXwcz5A4oSndJAdxtwKHIKZee7Qdtb97fMsKXMPs344Zvht253LHmTYNm0jVnQUtsmibX8lsI3IjHQkaBM0gEm2jWREe0kXkjqYtKNbt7hMdg4ofcOcAmlwAYI50rTgZFb9eBXoJRXew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y9sbJrk1Ihxk7JK7nZ037K4AV5LLVPGUa+y088erAoI=;
 b=EKSPYtguVsPwFZxB0425/C7dEF+rBpoSZF8DPk0TecTqOB5e1/IJa8raHtXAaYCWwMZT16Lm+OmkBazsp6yD7nz5E3ZQIhuQepGsvxcIoLM+0vfg2/Z0ONvDLmrHpzcJAqm351twFfEetrn9di1ZCwU0dIuCJyr0zcWMyKrUH14=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3590.namprd15.prod.outlook.com (52.132.230.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Tue, 5 Nov 2019 16:30:05 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2430.020; Tue, 5 Nov 2019
 16:30:05 +0000
To: "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>
Thread-Topic: binding table update via broadcast/multicast
Thread-Index: AdWT9gstWwfffqwTTeW7FbCIzPL+qw==
Date: Tue, 5 Nov 2019 16:30:05 +0000
Message-ID: <CH2PR15MB35751E58D3FA5905E01249DD9A7E0@CH2PR15MB3575.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf60aec9-387f-4d38-3d93-08d7620d6aa2
x-ms-traffictypediagnostic: CH2PR15MB3590:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR15MB35906FE13B4D922F7AE1A12D9A7E0@CH2PR15MB3590.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(366004)(396003)(346002)(199004)(189003)(33656002)(15650500001)(74316002)(99286004)(7696005)(66946007)(25786009)(66066001)(5660300002)(76116006)(8936002)(316002)(7736002)(2906002)(305945005)(66476007)(14454004)(256004)(966005)(81166006)(5640700003)(81156014)(6916009)(8676002)(54906003)(44832011)(486006)(66556008)(2351001)(4326008)(4744005)(6436002)(71190400001)(71200400001)(2501003)(52536014)(55016002)(186003)(9686003)(66446008)(86362001)(6306002)(26005)(102836004)(64756008)(6506007)(478600001)(476003)(6116002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3590;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3mjxDne8dUj/LKEG/yhXe03AkqtLUPFDjYD4msiH1ugw7HbzTIo9BEdiWFyGyu7H/Cli4gfzC7cCrp2VRFrkkK1/8ydYi0xyR7Zok0Q9vCppZyHu5kdrjjTn6SJUxEaxZrl8YsQo8pfwW6bmfxMxCRHQQRLBl+xSwly3dftVklONsOI8BJLOgt/XhvNNlQswDOB9rEqJzyT2HYYdIBH5Cp7t0db0vMyM6Y4oZ9+k7aBmuIMo61oVfRHiWzlJ8d0XpivkGZ8Tzu8cK48ihJSY/AjopYYLdRe+A/XUruA7Y4tltxmCUP7dYvoXIcJJIz+GYSigdjIwc2eM63UGVmGDUFoqdegCZDZqibZKIBceNhGZHiWSBIpl8W/R36pT9xTPLbb1brYFtnO/x6oM68B9nOqHWUGJfGfxAxtFyBhffqonzaubyBIs9+VqsQ4NQtr2g7adN0D8uNfdjANI8Gq0CVXgXMz4iaK11gMeIYDyKCA=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf60aec9-387f-4d38-3d93-08d7620d6aa2
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 16:30:05.8209 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PNeOoWZHbqtPkCRgRnDP32d49Y+6x25iWQWv4/A0X4qptRfmPpujt4y3384uRw4Bz9dCrpGBZb1YWJMuFtuMQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3590
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.70.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iS1ig-001THb-Ng
Subject: [tipc-discussion] binding table update via broadcast/multicast
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi,
I searched through the tipc-discussion archives, and found a patch from Ying that explains the problem, and try to remedy it.
https://sourceforge.net/p/tipc/mailman/message/29490037/.

However, we never moved binding table updates to be sent over broadcast in upstream TIPC, simply because it is working well now, and we saw no reason to add any extra risks.
If we are scaling up clusters to > 200 nodes this may become very different, so maybe it is worth trying. I think the chances for doing this successfully are much better now.

///jon


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
