Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69181139803
	for <lists+tipc-discussion@lfdr.de>; Mon, 13 Jan 2020 18:48:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ir3pJ-00025B-Pq; Mon, 13 Jan 2020 17:48:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jpelletier@netnumber.com>) id 1ir3pH-00024s-Sp
 for tipc-discussion@lists.sourceforge.net; Mon, 13 Jan 2020 17:48:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e1FSloeExDX/buSYEjzUV/ysbo8j3mUhbHEFb/HkUvI=; b=MOWE/aJhR5dIgndUHEhUYHUgUz
 FTd88OYV3HleeOSvVEjxGADfTErWOSFIQ/S7a4Ih8R/Wk2R36oVYo8+lPHLayiV5aS7+dBBG4/WQX
 WL4MNcWnyjhGrh/lroVNQAWIrI+5SSWBA9uuWc135Y6Htz2FQd7LRI6l06esYtiFsqW8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=e1FSloeExDX/buSYEjzUV/ysbo8j3mUhbHEFb/HkUvI=; b=R
 acyLE+XyQzl7ak3bwW+FzPdLZfJ7Sax3If+Yzpw4Rh2wL6YDc2LOv6xcwmY9i3Rnwu7EEFmOLpIVM
 lo2Bszi3zZbDndqAJ2Do3IjbszEdcvOl4Tu30io+644VHdsRtkKOHaIuuJW9BfRoVYWBiBPFanI+m
 b2IHZOLgfdiRXgDM=;
Received: from mail-mw2nam10on2099.outbound.protection.outlook.com
 ([40.107.94.99] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ir3p6-001HuY-4l
 for tipc-discussion@lists.sourceforge.net; Mon, 13 Jan 2020 17:48:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bUpCs4W/RvMUNSuObUPafnce5lo7OlpcOtxPR1BHkYiBJz6/WRp02RsI8UkPi7qE6k3HPZDOnXzU1jInIyIuAu/QfkJBOkYx4Du5YnlW66VOlCSGr/ESFk0w8yH85cTdwpSe2Omldf6jUL/HKv9oxL8c7PzZ9uHMn5yyuVeAvIH9hLz/XW2frNyfL4bwafU4H77vVBB+patI0sXRckc+OAIKNWJuTM4r2Bbt4ibDjMLsiYtdXXPjNB4/cc0oxBNSQ0L7+4/sVdV83c1PJu+RrvB1aOZlaWqksb6XV+DhbBLJXSgtt1nVLrTc/oZlPSYnYdljLMvGCpUwQOjJ56WRcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e1FSloeExDX/buSYEjzUV/ysbo8j3mUhbHEFb/HkUvI=;
 b=AWufwdA/E5EAiK9A2yS+XPJgAUWe/RxKetHgHnPr7p1+5GFqkbjxCoKROmXkHun1blQmuMFbEdVvnYy8tXUW6rXxlXAwJFsvtOV3BsQWP/YYzOFVJ4l0iKQKB9bDpq2z8VXd4Xig7sJYVqJNsoa/8jH6C2RGyGoADFPpUjZkx5XSzs/n/uV+gSEYNYju678MJdDN/6JehKFU8uxWD04ReAtG+LQTZh4rKSxwL2YxS40HyFOnSg9AUWg2zOlH+eu9tEO7iF0z7E1BT/hN1plmvowM2DqrioVNtqzIrddpn4jmyMEgQjJq49ymOQ8gl/avOnNKiPYIXCM9a6+h2Q+Q/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=netnumber.com; dmarc=pass action=none
 header.from=netnumber.com; dkim=pass header.d=netnumber.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=netnumber.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e1FSloeExDX/buSYEjzUV/ysbo8j3mUhbHEFb/HkUvI=;
 b=DQCzTyvZQoAxjdyUzCN9RBLyAYSxN95gClstom/UwkceqaaDB33BnxJH0J+ObeeYExR5EfY+bhXpKkVSIfcWR4hcldjIQomOnAxX6WLbUR2Vwx8SFws79NxcTLj6Yuva3Dr4ktYarR8MmUjbKy4ZYXzGbfj6+PyXgJFPjP/HZYU=
Received: from CH2PR18MB3431.namprd18.prod.outlook.com (52.132.245.140) by
 CH2PR18MB3367.namprd18.prod.outlook.com (52.132.231.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Mon, 13 Jan 2020 15:13:53 +0000
Received: from CH2PR18MB3431.namprd18.prod.outlook.com
 ([fe80::7d15:4ee5:e049:d461]) by CH2PR18MB3431.namprd18.prod.outlook.com
 ([fe80::7d15:4ee5:e049:d461%7]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 15:13:53 +0000
From: Jay Pelletier <jpelletier@netnumber.com>
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: Disabled port detection
Thread-Index: AQHVyiP8VBbNVvbdJEaXe5rpnomsiw==
Date: Mon, 13 Jan 2020 15:13:53 +0000
Message-ID: <CH2PR18MB34316BAA676F2844DAD31620D9350@CH2PR18MB3431.namprd18.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jpelletier@netnumber.com; 
x-originating-ip: [66.37.38.50]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b32a0146-33ca-4c28-4d74-08d7983b33c0
x-ms-traffictypediagnostic: CH2PR18MB3367:
x-microsoft-antispam-prvs: <CH2PR18MB33679C302068080B8EB93C13D9350@CH2PR18MB3367.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(366004)(346002)(396003)(39840400004)(189003)(199004)(33656002)(3480700007)(7116003)(19627405001)(6916009)(316002)(8676002)(81156014)(8936002)(81166006)(52536014)(2906002)(4744005)(71200400001)(86362001)(7696005)(5660300002)(9686003)(66946007)(76116006)(66446008)(66556008)(66476007)(64756008)(478600001)(186003)(55016002)(26005)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR18MB3367;
 H:CH2PR18MB3431.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: netnumber.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0PkGFpOKdyufnxswvChIrWuSBGHAmuE57RQYuA6ub2xkGYEAVQJX91uw1h8StCyv62esJvISFAh0Nvw/fEifalS8dGp5xhEDkbQk+6LugBe6VTDDhQQBZq97W40J+ptF7XpJABpHnWT/549JlcMHEX0kqjY9roGXrXPT2oYQ4v6svtdthJTOIDELg8jJ6srI7Nj78MLioJ3tf9dd3U5Dl8e3m/B2r8ObI3nxpPd+NEFqAtdszQ1DL1GaOB/bKmyytGmViyLyBHFrBHBfiYbo8guStzpAr5MQcCHqEC9++V4+2nlunGeGHpicau8NaonBvN9VbC15rl48DCamxtLxj7wgvFH/vmAshn5NbNHFF9Babhw1//t4PPzRBi1NIGOUq3ZX7Wf6/C9E8NciufZMBmENwfKiL351g309stMY1UBFGM4s8dXArBb/V6VANkPG
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: netnumber.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b32a0146-33ca-4c28-4d74-08d7983b33c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 15:13:53.3638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 07ef59fc-9c49-430e-922e-28c86c69c13b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZLT7XhHNV9+vP4WoJxvDFH00kDkkoSf/XrxDHO5ef+q1BbPS3PFX2UsOOJXx2Qhe9nGHTFXX68nlgwpTcCFtpiLB/hOlGc2HYXqnWNJ5gq8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR18MB3367
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.94.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ir3p6-001HuY-4l
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Disabled port detection
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

Hello all,

I have a bit of a general question.  Is TIPC able to detect when a port on a network switch is disabled?

To further illustrate, here is the scenario:

A 3 node cluster where each node is connected to one another via a network switch.  When the port for the connection of one of the nodes (lets call it Node A) is disabled (not disconnected), Node A is reporting that the status of the bearer still active.  Is there any way for Node A to properly report the status of its bearer in this scenario?

Thanks in advance,
Jay P

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
