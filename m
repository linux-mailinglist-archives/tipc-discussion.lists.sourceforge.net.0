Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EA11A0946
	for <lists+tipc-discussion@lfdr.de>; Tue,  7 Apr 2020 10:25:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jLjY3-0000Az-Mg; Tue, 07 Apr 2020 08:25:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jLjY2-0000As-GD
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Apr 2020 08:25:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=01uHNE8pPV0ahdgrtgeU1YWbMjfzSbx0bH1eNcqcDOU=; b=H8IPNdEPOMiUp2rs1p2Vq1QkzR
 FbLQdoNIEgh0zIBiYvM0gDcE7PDLSJQ0NTdV75WAEkTVdi8J7q9d/RqH4WN2MOpPRumltObjWkAKl
 4Kk6uki8xqxSONxMS3/U1lhZu49uiktx90szIx24q7kCd8eLQEnLSPNieEovvbOkTvu0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=01uHNE8pPV0ahdgrtgeU1YWbMjfzSbx0bH1eNcqcDOU=; b=ENi1Rk/Mt+n2WqY4XXXSYTnMac
 ftNzsARFJIWdBYWgtrc4ysDuFsb/8bE4Ol46mBR4loaxavhI/s6PeXdLOjECQep7+BJ1HriAhStVZ
 sjckjzC2oW19xCsiSAuH6g5ll9Zc5jEyTX6g9WWHrKesMhbsCr5XGw4R+p6vLZN2xENA=;
Received: from mail-mw2nam12on2079.outbound.protection.outlook.com
 ([40.107.244.79] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLjXy-006F8M-Qd
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Apr 2020 08:25:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X8TalMmJyNguhInf982T3G1sQBZWU2f3c9vmvLXRTy8cUvx1urk6rSaIYc4ngMtGF5Q3h40xkItgBT+ndKjMu1l4Xbec6L9nvbMRN3T1PQC1Xc6wuEAU6LtF3quoal/7mMXJHK5N/oUKFIovNnPglhENrZIjLAgl4yTUV4y+d1K3iOD8IiQJ5wQ4jCM3ZOPaF6qyThiTFDsqt8sy3Y24D9cu4vldxIMkz1j0s7DFR5TqSs6PKsLDL/M1jb7uRN7OmHrS3dn+sPhzoQza1UrH6RO7+NtNqfbSysPN/9Ihoz3aSfnr8nuQ9OGv+ipD2Xpk2ORAMDeXqTAHCBMxC9CYXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=01uHNE8pPV0ahdgrtgeU1YWbMjfzSbx0bH1eNcqcDOU=;
 b=iy6t8IraQL/Sz0HN+vNz2AzmAhIXAD7nyf6cmIv6vfswFrS9gLHQMP7hteuvCHTTV+DcI5IKzTNsTyVUk6DdTWe+NeQTdMHyDdMBlLDiXj2nPMRM61YNqTYdlckXWzRCr7V4iJCDixjvk3iB9NRxneu7Tov27DeGPJzQbHfeZgkwm0RZEny+w3AUDT+UUrox9bLLkk7Fl2MSiZG52uFBOpr9QnEAYwd2bciG9FTE8TZ5h+q7YOxd2sUG3o9JhP1DE2MJR6Xk2K9DY5+EhlWv6e7JdCfxKShiIWiv03yyW4uv92wZMqr2qy5LTMwDwMn+y0o9+zO0N4VJDWBQVhUa+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=01uHNE8pPV0ahdgrtgeU1YWbMjfzSbx0bH1eNcqcDOU=;
 b=CnOiGa1HUVjqgSZy+T+wtiZBZ2xYcrCsBSj05Ab+kNLqiZFWykg2ClLoTO4N5hmgkLFFZm5vJx250pmQ+BBIQdVeGIB2nY6nFqE40h+kyoS+ShxJ2h5xJI10j/QS0l94zqlwI28ODtU0xur9Nuo2dyeg35h8I4VcOOzM+sBYOGQ=
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB3991.namprd11.prod.outlook.com (2603:10b6:a03:186::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Tue, 7 Apr
 2020 06:52:04 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::541:f9ad:2745:e289%6]) with mapi id 15.20.2878.017; Tue, 7 Apr 2020
 06:52:04 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH RFC 0/4] tipc: add some improvements for broadcast
Thread-Index: AQHWBLXe9A07Xq7T6UGvWgUokSKu9ahtSEUw
Date: Tue, 7 Apr 2020 06:52:04 +0000
Message-ID: <BY5PR11MB389475CFECDBBDE3395C8AED84C30@BY5PR11MB3894.namprd11.prod.outlook.com>
References: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ying.Xue@windriver.com; 
x-originating-ip: [114.240.85.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4288535-8fc3-44b4-049a-08d7dac02e75
x-ms-traffictypediagnostic: BY5PR11MB3991:
x-microsoft-antispam-prvs: <BY5PR11MB399117542E920D0E64370D4584C30@BY5PR11MB3991.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(376002)(346002)(366004)(396003)(39840400004)(64756008)(66446008)(55016002)(186003)(66556008)(71200400001)(52536014)(5660300002)(66946007)(66476007)(4326008)(9686003)(6506007)(53546011)(86362001)(110136005)(81156014)(478600001)(8936002)(76116006)(81166006)(33656002)(2906002)(316002)(8676002)(26005)(7696005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EOlmUwJx9oefaQZXCAKTGP29lu9qU6NZfZaKQ94VS2Cg+cd0wOV4lUAtJberGjrCqv3A3LJ8Z2IaohkFaGWKEnavacYWkmu6IvteeCAMIWUwlS5LaOIOLszwdNC41oz8OffktCvOsMRrHtMdavTF3YgCSokwEDAS5TXxYZSAR/2Dfc7I6x28xRmdJBrXuFbILZmauNJepibJX1fOVznuIvDHMpMGAbaw69rwnmvuGEawAX1E8qDz5aSG0gmJWv1UVl9xDXhut6Dt4+UZ4HW17Pu4kkbrapDVRruEgelUKCwSHnnYiIUr3C/cTJSTqd6y38U63IbmqcjExGbk1z1g6eoxOQZRd6KD5UBccUoWMD8+KfW8FYdPN2IM21RXRv8Mk3z/LnukXzEAhIhahmY0XK6MNvEkqiIsmLlfDemW8Od1hcNEpg+MlPLCav+obMsE
x-ms-exchange-antispam-messagedata: oUDwajEIvkWwfJ6Leoka4olmrZaR35K/sLg2JHjZpt2K2iq2HtLgnOLR/Z5KmlUGc9dEuDhGDmvCmssLnTzNyso6WvXM0kA/CTQ9Kq9mHPhg/SmZ6bNOcGr+KfHUnw1v0xmCXeqJ01I59ErWMdHVSQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4288535-8fc3-44b4-049a-08d7dac02e75
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 06:52:04.2192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ts/ktG7SCWZi9cjssk/sgHUOHtUOA6UAk6CVe6A+0pQ5usASynEQLl38x+wEilFXC0YIb3y20Kl/fwdFnNQpEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3991
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.244.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLjXy-006F8M-Qd
Subject: Re: [tipc-discussion] [PATCH RFC 0/4] tipc: add some improvements
 for broadcast
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
Cc: "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Good work Tuong!

Acked-by: Ying Xue <ying.xue@windriver.com>

-----Original Message-----
From: Tuong Lien [mailto:tuong.t.lien@dektech.com.au] 
Sent: Saturday, March 28, 2020 12:03 PM
To: jmaloy@redhat.com; maloy@donjonn.com; Xue, Ying; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek@dektech.com.au
Subject: [PATCH RFC 0/4] tipc: add some improvements for broadcast

Hi Jon, all,

Please find the full series here,
+ For the 1st patch: it's really the last one I sent before, so you have
ack-ed already.
+ For the other ones, please help take a look. Also, I will send another
patch for iproute2/tipc which is user-space part of the last one in this
series i.e. broadcast rcv stats dumping.

Thanks alot!

Tuong Lien (4):
  tipc: introduce Gap ACK blocks for broadcast link
  tipc: add back link trace events
  tipc: enable broadcast retrans via unicast
  tipc: add support for broadcast rcv stats dumping

 net/tipc/bcast.c   |  22 ++-
 net/tipc/bcast.h   |   9 +-
 net/tipc/link.c    | 500 +++++++++++++++++++++++++++++++----------------------
 net/tipc/link.h    |  11 +-
 net/tipc/msg.c     |   9 +-
 net/tipc/msg.h     |  16 +-
 net/tipc/netlink.c |   2 +-
 net/tipc/node.c    |  75 ++++++--
 net/tipc/sysctl.c  |   9 +-
 net/tipc/trace.h   |  17 +-
 10 files changed, 424 insertions(+), 246 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
