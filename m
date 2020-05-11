Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C43A01CDA65
	for <lists+tipc-discussion@lfdr.de>; Mon, 11 May 2020 14:46:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jY7oh-0004Nz-IZ; Mon, 11 May 2020 12:45:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1jY7og-0004Ns-G8
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 12:45:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ldGNNwzm6SzayYWX+jrkusQOvfADqzct3sL2y3+K5bw=; b=EDTmn1nbsFKrycnSKGVk5a8GLR
 4439XrjcEX2rtZKoIXq8UNDEI40NkNHwlpO8MsW71VPtNUZ/87IqgWSw9SVcejdRmvLp0267+prk7
 uRjdWdg4G0uBoHYza0Ep/VfXCezIiOm+6rTNhHhr8dkedeT0URDn1rmROOspv5r02494=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ldGNNwzm6SzayYWX+jrkusQOvfADqzct3sL2y3+K5bw=; b=M3Z/UsIt7AML190d/Fq+eiasKk
 WfbGGq6mIK04F5J+ige0Zvx/AsivYfe7HMPxpKA6NePObncVICnqxPbbSW5vrNapLhUCixANWcWmj
 fRsH/OoRR572Mk0+/4ox/KdJPoJSPyfAK4d40igvYG/sGkb/GYeEB9DFI3LXJiejHa7o=;
Received: from mail-co1nam11on2041.outbound.protection.outlook.com
 ([40.107.220.41] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jY7ob-008pnK-Fh
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 12:45:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ofbp/fZStXJMceAsMbu+69UxSRnjgDbBS3toIhlh+gCVD/i3Z2R7Cd+WZQkaxzzprpBRZi7NmNTX08Ppk6OgyRRk6UWCVJJ/Rr+qSwbELDvMT+/MRWF86Boq7KNS+CO5aTCtJ/LMpmr31T49LjCDCrK8GCpHMu7VnCW5QhQ+Y4X2e3Yx3WG+ZPScQ8UnI4U+eehyA3kHwnVqUAstvSJYENlgUgm819IcazQmd8zpcXhx/VtJpkI0NPbQs/d44Ez7pZ3TXTD3agRxFLlBNBdfB2tyoCjw1Fd3jPqqhDcFxyzBWrXAoDH21W38mlarhNGv0b7/Cd2MRWyEv4lOVJgOIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ldGNNwzm6SzayYWX+jrkusQOvfADqzct3sL2y3+K5bw=;
 b=Ss3ezoNqJ7vT/E2EDEN+yauNRK+NMflQ9vVJ43jdkGs2ILJywTMLRomJLy7kXwV5BIK2nv+dTACWn8Fx0F8sUGHxeH0QBYS4bMEnEHGjhKG7DLDtk7xfAUGvBjS25o9tb41TYeu2J8z/PZlgjBjyndP5Hy/T6AjftvQSf80KIRTRc3ihy8anyA/iKQZrJhNLf9xD7MeSvUXAIIk4rAK7CD+St5nI/Ddo7Dy+f0wxC5FiBs2+O8KuK30xs7g+B6BVyfEQ2X0joemy35dOlnt42O9F0DS+iGtL5FoYH3ZCP4fee6cEB85RdbxRvS3X4GdxeAbzWVTYutrICVqaqG2/lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ldGNNwzm6SzayYWX+jrkusQOvfADqzct3sL2y3+K5bw=;
 b=NWQAPbOo5f3c1Ni2NgwDbgG8EagH908ujNSK3NvLwvW1U/P8WaLeVzfB1M1Okho53I2bsZakgJ7MRPKaza1XCXkgJUUG/Pv0XaNk8QpcQgMQDw4d80qQk03kjRldbr8UXS/ALBc4d3ktzTp3BLa0NsYGHrNdhWS/n+Npk99zqU0=
Received: from BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20)
 by BY5PR11MB4355.namprd11.prod.outlook.com (2603:10b6:a03:1c3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Mon, 11 May
 2020 12:45:43 +0000
Received: from BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3]) by BY5PR11MB3894.namprd11.prod.outlook.com
 ([fe80::cdc3:c78d:773a:7dc3%7]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 12:45:42 +0000
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien <tuong.t.lien@dektech.com.au>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [RFC PATCH 0/2] tipc: patches for Nagle algorithm issues
Thread-Index: AQHWIgcyIP7oCCE2MEesHXZiU//ntqii3/aQ
Date: Mon, 11 May 2020 12:45:42 +0000
Message-ID: <BY5PR11MB3894A4D223E1A3C3F7BF431B84A10@BY5PR11MB3894.namprd11.prod.outlook.com>
References: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
In-Reply-To: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dektech.com.au; dkim=none (message not signed)
 header.d=none;dektech.com.au; dmarc=none action=none
 header.from=windriver.com;
x-originating-ip: [60.247.85.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f30cdc0-d9c5-44ea-dd85-08d7f5a937c1
x-ms-traffictypediagnostic: BY5PR11MB4355:
x-microsoft-antispam-prvs: <BY5PR11MB435522927B12E46D49F2D0C284A10@BY5PR11MB4355.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 04004D94E2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5ddG8SkcSUDPHBmvMOVrAjYaV2LtFHXE+VwWc28gn0gvEztWGhQWHQK0hPNdiyt5VDVVZKPfTcDVbq2aInO+TLCC8rSL+MZAvFyIDAuiaMbl8PHKhQPVXeU5m/znJ3SY7vigYpB9ajBR+CftxGPEYashqqOTLylaqeJ8GWFWbe2O4dPOlh5K16rZ0WUlAWMiB2vtL8/e7agDzFd4z+3PwVAAQGPDiAlXF/ycKupgrmrVvq/KSM/H+9CljqsB9aCRyFNfpmtp2OWuE3qKC1Nr6GiEx5cxUEa6O5v9J+dZ+9PkOC8QTn31A7fjv0CcL+5xxo1gnaPB6vKiJlUd0fwau3KXDSsnusvOQBmU7CYzforjzApRppSEITBcakTUQwHTfeZZ5L34x4RN72r07c1zo54ZSCu9quXUnu/jwL2sCpJo/J3UBhmj5yzaod/GhvuIMmVede0x1OhbglFnztYidM/jyuKEXMcw9oQhQocsKY3DljXLTGUsoaVT7G5kbWsEUt4Cg2pRaAm++ygWaIUu6g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(396003)(136003)(376002)(366004)(346002)(33430700001)(26005)(66946007)(33440700001)(76116006)(52536014)(8676002)(186003)(316002)(9686003)(55016002)(71200400001)(66476007)(6506007)(53546011)(2906002)(4326008)(7696005)(64756008)(66556008)(5660300002)(66446008)(86362001)(4744005)(8936002)(110136005)(33656002)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: YBZ/o35/aB81cZ1ptOjJOKTbD1YsyK3h2hSmp5dM4YFGHmBQj+NkUih7ilaNsY6S8nMLH19lqw8TG+yf6sDJ6mXwCBy9KxcdckdNMMojPpmQL65U5ja2ltEGac9i84UgQyj/Xz0//wSI9asj1Sf89oDEKTLMVed8R7GKoUQ7JZBzGDOLadAY8CufjNG/GJHb35HYCY9Ga63bASLp8bekZROosg9HvuvvocK1nE66HUXVZ2mU7y+tY57RcEnoRwCENmm/CnV/Ju5N7ddDDhpAoaeSpXIjT/AgQHEup9LjvMN57quojjQtpnEAIReK2BIFBs4tMwOAgL0+OYwShSQNzlD8yDbITksmXd4A42rA9ZkkEu1qR4xV4TfLW4s6I+fr1lqRB84+KtWso1Ocg2rWMfVg+8TKFaaUm5d0yKb5nUxpSw+NKGsSjg5Q6LUEglCnYZqxKtIV7NY72fdjaBbK6Jo4/Ef2Vb7t04RiYa4MDkw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f30cdc0-d9c5-44ea-dd85-08d7f5a937c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2020 12:45:42.8865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OtnmSmXJM1LUa/XdoDuIZvLZwWUv0OT9JLaOkjrBnfD8MAnsXpSxuHqo0366vHPHs19TAkfkYm0jxE5pdxyLRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4355
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.220.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.41 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jY7ob-008pnK-Fh
Subject: Re: [tipc-discussion] [RFC PATCH 0/2] tipc: patches for Nagle
 algorithm issues
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

Acked-by: Ying Xue <ying.xue@windriver.com>

-----Original Message-----
From: Tuong Lien [mailto:tuong.t.lien@dektech.com.au] 
Sent: Monday, May 4, 2020 7:28 PM
To: jmaloy@redhat.com; maloy@donjonn.com; Xue, Ying; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek@dektech.com.au
Subject: [RFC PATCH 0/2] tipc: patches for Nagle algorithm issues

Hi Jon, all,

Here are the patches for the Nagle issues that I mentioned in the last
meeting, please take a look and give me feedback.

Thanks a lot!

BR/Tuong

Tuong Lien (2):
  tipc: fix large latency in smart Nagle streaming
  tipc: add test for Nagle algorithm effectiveness

 net/tipc/msg.c    |   3 --
 net/tipc/msg.h    |  14 ++++++--
 net/tipc/socket.c | 101 ++++++++++++++++++++++++++++++++++++++++++------------
 3 files changed, 91 insertions(+), 27 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
