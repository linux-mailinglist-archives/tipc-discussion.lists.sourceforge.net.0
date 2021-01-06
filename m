Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4E52EC32E
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Jan 2021 19:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZxYBTEFQJ1pnEf7slsipk29pknLh+Vj2ANTv0yndi0U=; b=TGD3HooaklAXZHdRYj6hEzYpG
	U8uMceLVxN1N7G77s2i3xxs8FLGeJVdJ3Dme+mBV7eBFhP87FO/8fnCTrp0cRr9bpNBB3vLeGD0HR
	UNky+MoYI/akBAAjSfNOeXI5xQKO4DbijhguFVs5J5XTKOdZHLBhBNjjYyzA88BWX0rqo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kxDSD-0004WS-PG; Wed, 06 Jan 2021 18:22:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Gary.Duzan@fisglobal.com>) id 1kxDSC-0004WL-Nv
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Jan 2021 18:22:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IK8BgyyWEmPErVNXFocqV4QtHhlOwdMOk9pkD13VaoU=; b=Yi3DD79dMO4N1pg74W30QRKopx
 9NumHaHcK2lzfqn8mq6xZ59vY/lZ7YdmQ1sBDu5EOYT1ewXESFExagd3jQvS9zIOS8/9PZn3/s8l8
 4FZg3REvKD8ZOGi8n2JyIbHNbo91oZA+XhAGIOuA+RSvtR/EUKrYdU1Od7K5MbEeguSY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IK8BgyyWEmPErVNXFocqV4QtHhlOwdMOk9pkD13VaoU=; b=SUspamn+TjJxqUDoyJfvyewteX
 9aHVjkeOaPLrIBs4fI672zI+bpJ3Qb9z2a7u7VF4jXKqaoILBbE6nbBRxUXTNVLE8wWQcrDZ15YUT
 +w1alqIcCNjlrt2XFQ//rOohAjJ3e26bT7wfaGetLMHvnO6UqUL5b//GBkZkmDscljag=;
Received: from mail-db8eur05on2098.outbound.protection.outlook.com
 ([40.107.20.98] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kxDRw-005Umq-IJ
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Jan 2021 18:22:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jPfwGzwWHjcVNocNH19qj8bDUMA24Gs/5j7pUw4c35k8tWqwYNsg4ii1zJSxMLUpBhYOsR/3XikOkEN0LGG7ll+iWB00HjybPShXRggXIRQYu5gBEkyf0AVRj9K2JK4PKmTM6CTijRCJtvvIMlFKKYNRnoOPKcefmB2ymB2rj9Ul+H5fgE2d/ifvwv+ZWrnUJCWsD3bpHybfDK2sLe4QI753jdNiB2vDcmkz2qr8I0UrO+MtU5W/cLXCWugcExEA/bEG/y1rX5jY9EcKk7pE8EfmswwjQ07GcnrdpNQ8uKljkpiLxYkFumgMbRsaKRCcjo1n36TTV08OYXOEeK5cxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IK8BgyyWEmPErVNXFocqV4QtHhlOwdMOk9pkD13VaoU=;
 b=MIx6mxG/9vrlSqwig7u/h9WtntUVWlOpi4j95/1xSPFcB3a7JgDxnqlbLXbTFvkh+VCtsXIYVhuSJD38VM/G8x2hockPU69cIRVyvv625ol9shZpDoCyC3vcGqO9YX4VZf7yygSJylEbZfp+ZbNinJAEAGIQXiE9asOGlK9gym1+87GeQQUXu8E3yPQwYRti+xIw21f9rWQ8nFJSRMm1P3vFef1roocFzIcY+6uvPEXACrTVKtyd37YYQ3F1LGlMP7zSA86E/5n4Sp4cr/u4TS2Qm6jCCb5hjHoV6hGiZtSvV06fdGp5IkRZG/4ynTCHtjoEqs6NM2Knidd+Ku2QlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fisglobal.com; dmarc=pass action=none
 header.from=fisglobal.com; dkim=pass header.d=fisglobal.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fisglobal.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IK8BgyyWEmPErVNXFocqV4QtHhlOwdMOk9pkD13VaoU=;
 b=htVZvOEZwIzGfP/4Vjb5e8806lVodF0mvBeTnn9V+mxk1EgcXtqF5wYPxM3dhjwSOMCHM1VXp0lc9C5LFcQ+Iiz2T9CkoygliiJ2RwRUswJUQ+Ecfb5un/COT+pnN7G3ucXkgr8x3h0z2aNTLpWsxWbYbaez3Jg+Lq+iolY1m6Q=
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com (2603:10a6:803:e3::17)
 by VI1PR08MB3744.eurprd08.prod.outlook.com (2603:10a6:803:bc::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.20; Wed, 6 Jan
 2021 18:22:16 +0000
Received: from VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::b85a:8a9a:c264:4d0a]) by VI1PR08MB4192.eurprd08.prod.outlook.com
 ([fe80::b85a:8a9a:c264:4d0a%3]) with mapi id 15.20.3742.006; Wed, 6 Jan 2021
 18:22:16 +0000
To: Jon Maloy <maloy@donjonn.com>, Jon Maloy <jmaloy@redhat.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] EXTERNAL: Re:  Discovery between VMs
Thread-Index: AQHW43nI6nOHE2zcF0mo4uSmytfeSaoa5zxs
Date: Wed, 6 Jan 2021 18:22:16 +0000
Message-ID: <VI1PR08MB4192BEAD60AA244CD03A017285D00@VI1PR08MB4192.eurprd08.prod.outlook.com>
References: <VI1PR08MB419220FCFEAC17883490106985D20@VI1PR08MB4192.eurprd08.prod.outlook.com>
 <080cf9eb-e438-bf77-b7fe-ebc8b0d8adcf@redhat.com>
 <VI1PR08MB41923836D60BA5B77FD4DA6F85D10@VI1PR08MB4192.eurprd08.prod.outlook.com>,
 <466962894.7359816.1609861497078@mail.yahoo.com>
In-Reply-To: <466962894.7359816.1609861497078@mail.yahoo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: donjonn.com; dkim=none (message not signed)
 header.d=none;donjonn.com; dmarc=none action=none header.from=fisglobal.com;
x-originating-ip: [96.227.140.91]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a03dd186-b52d-4f01-8585-08d8b26fff3d
x-ms-traffictypediagnostic: VI1PR08MB3744:
x-microsoft-antispam-prvs: <VI1PR08MB3744DC98B6C7AA5F40595C9985D00@VI1PR08MB3744.eurprd08.prod.outlook.com>
disclaimersource: eop
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dlz3C87QqHiW3obAumL80LCHpKAt9uvTSJyoiLsJL0R87WB1ZwALSpBlb5nIhmTcz32glKdTp1HYF9uKaOdw99Z7uTtjDFMZvnIydFzlbVxsprtyPcdtp36ul+wDkxMlV33XszOFSqbc80paksU9Cqyjw+O76pfKYWRJNtPIs2AVOX45OExf9Rq0n/3SMyDsir52O+49+BpgL5IP7uEB2v6NvDN/TtWC/59NpSl7rVjpnwUBuWv2UA4XR2Wo7QY/Pdl16gG35EgrGvYgL3F2yLZPAUbG1zA5R7Jv9DhQzBOPeU/l7eQdfztbsIVhSSsMosbq8Cj7NpfCt9/vCe8c1xPzZwwqL0I/77YWIwMUnjtVgcV0nTXffaGpuurmuSCpEGj9+OzCYF2kcgDHWIazHp9FRFej6VGJTgLyQwRrVdgBSmKtXI7MLZHB32sDOui4U2YCQ2OX4sisJyf2DawOcg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR08MB4192.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(136003)(366004)(39860400002)(346002)(316002)(26005)(166002)(5660300002)(966005)(55016002)(7696005)(478600001)(45080400002)(6506007)(52536014)(110136005)(53546011)(186003)(66946007)(19627405001)(64756008)(83380400001)(66476007)(2906002)(66556008)(91956017)(33656002)(66446008)(71200400001)(8676002)(86362001)(76116006)(8936002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?IaKU+78QUNBv5PcS5me4r2OfmXRP3gmMUWQYJeGqSpb486eXmBbKBzM9Cw?=
 =?iso-8859-1?Q?dFrM0R1+mxZ0VXQa6toLuBqJyhWcBXL5igdSTLK41b89gj+h6hBeokICPs?=
 =?iso-8859-1?Q?Rihp4GrBHFLvMZnHcOtwuhDp8BJ6T5OLy785CaquDwjAkRfmMgocdtwSEl?=
 =?iso-8859-1?Q?Er4V08MjiSIJcYvtAyz4ZhvJzfeIEeK6z8D8/OUcu3HpmRFFuKfM6auHzm?=
 =?iso-8859-1?Q?wJmLbrct+XZkAxTqgMF/ZcAAWiVv8vhXiczW4+a5CF41uOOlVKa0fsWes2?=
 =?iso-8859-1?Q?rZKtK4gbh+r+VNxkJL6Z/o9JTaHE0tqUf7BDRn7VI1MCB6mvXZ63oZ0x21?=
 =?iso-8859-1?Q?B3DlhSiCG6f+KmzH52Y355iwHz8R/na5wnD6/6ObCfZXqR8RtbNjkvK/5x?=
 =?iso-8859-1?Q?/n+7/GDcZMvLdTl11MtKQll9VcbnNJAulO8Nw45yuq9f4CwJYQUTvB/esZ?=
 =?iso-8859-1?Q?tjirHyYlRuYToXbHoKktARx1LosM2567jp46zNj69lV6tjV4nBa60LXFta?=
 =?iso-8859-1?Q?EUVJuvH6iJiecp/POXXuD1wbJnU9f2aiNdI0m4FMS0K8xK+feoU4I8eqJY?=
 =?iso-8859-1?Q?uLzQhhbhimOHIP4fF6RX/5xklWZ7JtnP2XVtYwXVIjLYW0ga/5P+MSL3Gw?=
 =?iso-8859-1?Q?AVYepYgTHAN3hts+sJLye8JLD8UstpiPqwdD8Dmmf2HMXDnRoS/Q+aEXJS?=
 =?iso-8859-1?Q?tWCR2OhkGLXTRDels1B30w43itxqXPXiiRiZO1dzBYsQyrjKPUkCiDXrqD?=
 =?iso-8859-1?Q?14spfJMG3rJF4qYNAwgHa62CgIdGSiuGv2a5DIYj0lYvYFDfRpcKv1ZRNo?=
 =?iso-8859-1?Q?ju3Lug1pLVaucrEhYdHe3dXdBvqGpC0NKnxgdPxEerTUrS5HFcqEakPPmV?=
 =?iso-8859-1?Q?fJt1lT8HWCExv0daMd8ZTy9tqrz4vGYrjwCmrzG0QIQFuAdJ/0sMyrvoNy?=
 =?iso-8859-1?Q?kzymKqX4zL4YKjuuA1+e+aEm3hkWOYmEAJ537o9pcKw0mIdCN2jQEVcbWH?=
 =?iso-8859-1?Q?B0pkfB1AT/OVRobrc=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: fisglobal.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4192.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a03dd186-b52d-4f01-8585-08d8b26fff3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2021 18:22:16.5691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3ff91d8-34c8-4b15-a0b4-18910a6ac575
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wax7+TSQMew8O0Cb9zxBqjawRXpfkV2M4ElHuK2qBtQiK/ENq786p4vsn+feIY9d9MTMUGhe+Z4qyidztpL0jKUN4RX7r/uOkuiSmu3zBiQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3744
X-Spam-Score: -6.8 (------)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.98 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.20.98 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM white-list
 0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kxDRw-005Umq-IJ
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] EXTERNAL: Re:  Discovery between VMs
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

   The eth link did eventually come up, as both the eth and udp links were there when we looked. It isn't clear whether this was a matter of elapsed time, some other traffic that allowed the broadcast to pass, or something else that we screwed up. This is VMware ESXi, so a different beast than Workstation. If we manage to narrow things down or come up with a fix I'll try to post it here.

   Thanks.

                                                           Gary Duzan


p.s. So far I've been fairly happy with TIPC as transport for a scalable RPC-like service. At least once I got past some of the quirks of the socket API and the tipc utility.
________________________________
From: Jon Maloy <maloy@donjonn.com>
Sent: Tuesday, January 5, 2021 10:44 AM
To: Jon Maloy <jmaloy@redhat.com>; tipc-discussion@lists.sourceforge.net <tipc-discussion@lists.sourceforge.net>; Duzan, Gary D <Gary.Duzan@fisglobal.com>
Subject: Re: [tipc-discussion] EXTERNAL: Re: Discovery between VMs

Hi,
When I was talking about VMs in my previous mail I was in reality referring to qemu/kvm, but I was was also using VMware Workstation for many years, without any problems.
I doesn't sound unreasonable to think that they might have changed their default network policies, so this is a good place to start looking.
Actually, the main reason for introducing UDP as an alternative to bare Ethernet was exactly that we anticipated this kind of problems.
In your own network you can probably fix this, but there might be cases where you cannot influence the network provider this way.

///jon


On Tuesday, January 5, 2021, 09:24:32 AM EST, Duzan, Gary D via tipc-discussion <tipc-discussion@lists.sourceforge.net> wrote:


  Thanks, Jon. I've forwarded your information request to the site. We did get things working over UDP (using the same interfaces), so we know IP is working and the netid configuration is ok. I still suspect that the VMware virtual network configuration is squashing non-IP traffic, so I'm focusing on that angle.

                                                          Gary Duzan


________________________________
From: Jon Maloy <jmaloy@redhat.com<mailto:jmaloy@redhat.com>>
Sent: Monday, January 4, 2021 8:01 PM
To: Duzan, Gary D <Gary.Duzan@fisglobal.com<mailto:Gary.Duzan@fisglobal.com>>; tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net> <tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>>
Subject: EXTERNAL: Re: [tipc-discussion] Discovery between VMs

CAUTION: This email originated from outside of the company. Do not click links or open attachments unless you recognize the sender and know the content is safe.



Hi Gary,
There are no known problems with connecting between VMs. As a matter of
fact, that is the way we run almost all the time.
Have you tried just to ping between the two VMs, using the same
interfaces? If that works they should definitely find each other.
If you can ping and they still don't discover each other, check the
cluster id (aka network id) by doing 'tipc node get netid' on both sides.
If the interfaces don't have IP addresses you could assign those
temporarily, just to check.

What do the commands 'tipc link list' and 'tipc bearer list'  show you?

BR
Jon Maloy

On 1/4/21 4:22 PM, Duzan, Gary D via tipc-discussion wrote:
>    I'm new here, and I have trouble getting to SourceForge through the corporate proxy, so forgive me if this is an FAQ. I'm trying to get TIPC working at a remote site between two VMs running Ubuntu 18.04 which at least appear to be on the same IP subnet. The node address is set to distinct values on both hosts (as 18.04 had other TIPC which required the manual config), and the broadcast bearer is there, but they don't appear to be discovering each other as the client gets a Host Unreachable trying to do a sendto(). I believe the VMs are running under VMware, but getting visibility on that could be tricky. The TIPC code works fine between physical hosts locally.
>
>    Are there known problems getting the ethernet broadcast between VMs working? I believe I have the proper incantation to use a UDP bearer for use as a fallback, but I'd rather not use it if I don't have to.
>
>    Thanks.
>
>                                                                  Gary Duzan
>
> The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
> https://eur02.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.sourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&data=04%7C01%7Cgary.duzan%40fisglobal.com%7C9ba4ec9a0b2647532b7d08d8b11569ba%7Ce3ff91d834c84b15a0b418910a6ac575%7C0%7C0%7C637454052818711634%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=wwrG5EjpLCNRDSis9XdZYSGbclFp8BA19M6z4MCU5SI%3D&reserved=0<https://eur02.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.sourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&data=04%7C01%7Cgary.duzan%40fisglobal.com%7C6e37f5ca6df34e068a6a08d8b190e973%7Ce3ff91d834c84b15a0b418910a6ac575%7C0%7C0%7C637454583256619260%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=%2BQxspim2wEOWPfqgYHnN0F5AJ%2BDpw1iZogPMh2WPP00%3D&reserved=0>

>

The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net<mailto:tipc-discussion@lists.sourceforge.net>
https://lists.sourceforge.net/lists/listinfo/tipc-discussion<https://eur02.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.sourceforge.net%2Flists%2Flistinfo%2Ftipc-discussion&data=04%7C01%7Cgary.duzan%40fisglobal.com%7C6e37f5ca6df34e068a6a08d8b190e973%7Ce3ff91d834c84b15a0b418910a6ac575%7C0%7C0%7C637454583256619260%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C2000&sdata=%2BQxspim2wEOWPfqgYHnN0F5AJ%2BDpw1iZogPMh2WPP00%3D&reserved=0>
The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
