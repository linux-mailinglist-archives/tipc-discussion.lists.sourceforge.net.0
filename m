Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEA112984F
	for <lists+tipc-discussion@lfdr.de>; Mon, 23 Dec 2019 16:34:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UAhvwyS9WCenRfhWNfjOT50SnDFfWYP6KF9lVNOigV0=; b=VNrAiPRSHkXkxu0UO2z+tTLd0
	KqLVoa2FUMg5z2cprJhurtr9rvbfT1dmJw11mzdOUlVLqg8hsUEzUAMoFMoIzvhwtqPZdot47RUMG
	3znLQmXdE9T1MWbX3XgulhfnTOggN8JYdVlYreRzUOkG/McdWGw1uSs6tX1pNGtls0eRA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ijPjO-0007Kh-I7; Mon, 23 Dec 2019 15:34:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1ijPjN-0007KZ-Ab
 for tipc-discussion@lists.sourceforge.net; Mon, 23 Dec 2019 15:34:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pizJX9fU0Rw3ujgUWCB3DKX8AH5WuiABLTeNnjyRyJk=; b=MxJIYDxDyE5sbbrOx6AWRwchFo
 64f9Q6JiBGJ4MGB0jncP5XRqpU0+bVQjPxhb1rSdKXcOfIQp75tnBIG5r7TBW59d2hE8N9B0yx/Ou
 YTYLm5O0TMddjmJTKd3d1K1uiLZTbuuawN3pXdjL7NhWObptN75gJzXpb58TyBSwERN4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pizJX9fU0Rw3ujgUWCB3DKX8AH5WuiABLTeNnjyRyJk=; b=MOulUWM2evsDmyjymisL68baqT
 IpzAbXYv+k4Cln+Jr1Jd9xckhJg/DqNKD6GrO+6k0ANvMB1XZxfEmxBwz5pVjZtWnDOD/VD6UShMD
 tZInKWP/wYxNJ4RapGkcCz8UXuPQ/7MkQEq94T0+IIzpF/ad+QfExTEcbP9oAUHcVJ7c=;
Received: from mail-eopbgr60071.outbound.protection.outlook.com ([40.107.6.71]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ijPjD-00D8ik-3d
 for tipc-discussion@lists.sourceforge.net; Mon, 23 Dec 2019 15:34:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yd8d/bwrWaFrutoCvKDWkg+qhfIW4g902MR+l8E4iAkO8e2aViMJ+QHtdRTNivSwwqBZJRFQri92Xk44/UCtukHBj7RMijy3UXgs6BbY+agK0Mnb3Xdrjkg1k/1hI9kalAfaqBWW/hwNoxZWvWByDNzP5ryC+9hgp3fGHx3c6gIYEAoQf9Afu/WGgT1rgNf49QBw07ZlyuCxqzDCNZ1AU0OqicnfJqZcCqT8OV0Syt5bHEGTD8p/UF32zeTNqF7c3GHj0INdbNOLXzqJOUDf4BkU5YXYq2jSrTXwoPgQF8I9haJmqqrZQiH7N7rUwlyTMi4kW+lY07A7CsCCEy5mAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pizJX9fU0Rw3ujgUWCB3DKX8AH5WuiABLTeNnjyRyJk=;
 b=VO5jO4whQHAo/pDbWPe+LS+C9pqlrpDCao5+RAbv/EixR1AZ1PDH3GRj2KBfsTjGXmeEQOBQZNz02ODEhevCJu1HLOTMddSYOt6zB93JqWEaTL4uTfZRdIcPzCPVCyGlj9ObIhGjuOWY+Du/xlMSkccx7VLzU3ejtRg/bBKQjz8NInYc2zh/P2hTUSENb0XFd5bhICj6kP6/v8bViAXcXhKsXGiRup0PTxxRBKOtbo+FHJaIEPwOgKpC65bac6I36gK5kpw//G1jrbVZY0W7sXRReK9Oq21Zh9niVHOlBrb1HSQ1/GAxAcZzFS4XqcrowCFqEDqzBZ7tDBzdqG18rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pizJX9fU0Rw3ujgUWCB3DKX8AH5WuiABLTeNnjyRyJk=;
 b=XofAror5HgJwCFkG1ja4fOq9jA+HCycuoQW2Y8/+wObBKsM0gHFOG3vVRRPAi235+hB4ZMUiJ5FNvsq+JV6egUAhx6JtN7YE2jTksCFWzMGxLm7vr1YDC+Gd2Mj/b6kK+I34jD45+Hm5DSdO2xnnBwrN66agtT77CcMnFujch9w=
Received: from DB6PR07MB4277.eurprd07.prod.outlook.com (10.168.23.25) by
 DB6PR07MB3144.eurprd07.prod.outlook.com (10.170.222.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.10; Mon, 23 Dec 2019 15:20:03 +0000
Received: from DB6PR07MB4277.eurprd07.prod.outlook.com
 ([fe80::4105:4de6:e3fc:96ef]) by DB6PR07MB4277.eurprd07.prod.outlook.com
 ([fe80::4105:4de6:e3fc:96ef%5]) with mapi id 15.20.2581.007; Mon, 23 Dec 2019
 15:20:03 +0000
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>, "tipc-dek@dektech.com.au"
 <tipc-dek@dektech.com.au>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [PATCH RFC] tipc: add automatic rekeying for TIPC encryption
Thread-Index: AQHVr0+txJ4kuieOKEG/zEYll6No5qfAo/IQgAQk60CAAAco4IAC3y0AgAA32pA=
Date: Mon, 23 Dec 2019 15:20:03 +0000
Message-ID: <DB6PR07MB4277097FFD0C8F9EFB178CB09A2E0@DB6PR07MB4277.eurprd07.prod.outlook.com>
References: <20191210114737.26371-1-tuong.t.lien@dektech.com.au>
 <CY4PR15MB13176361E704056DB2A814459A520@CY4PR15MB1317.namprd15.prod.outlook.com>
 <DB6PR07MB427791EE7B55AB971C22095F9A2C0@DB6PR07MB4277.eurprd07.prod.outlook.com>
 <DB6PR07MB427747FC6B2FF72C5EA6E2869A2C0@DB6PR07MB4277.eurprd07.prod.outlook.com>
 <06bf01d5b986$eab27da0$c01778e0$@dektech.com.au>
In-Reply-To: <06bf01d5b986$eab27da0$c01778e0$@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 457bd329-fcd7-4916-21e1-08d787bb959c
x-ms-traffictypediagnostic: DB6PR07MB3144:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <DB6PR07MB31440A98ACF94181C15603BF9A2E0@DB6PR07MB3144.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(346002)(136003)(39860400002)(13464003)(199004)(189003)(2906002)(53546011)(7696005)(86362001)(9686003)(26005)(186003)(6506007)(52536014)(55016002)(30864003)(5660300002)(71200400001)(76116006)(478600001)(64756008)(110136005)(66476007)(33656002)(66446008)(44832011)(8676002)(54906003)(4326008)(8936002)(66556008)(66946007)(81156014)(316002)(81166006)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR07MB3144;
 H:DB6PR07MB4277.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xsMLEhma2qh3RtDfOUkMDUyqbrjbUZ4rXqPeloE/7AlvLJBD3qWHF6FcmJPdTJY8Yx4Sa54/upTKjM/RyLouU9rPvOoO0b5mW2CA6pEuc+6TT/DENnO0mYjaIdSypxId81iAIU/ez2aiLce8IvuSs1mcClnJ+JcD8ae2W6gE0une2qdAYU/sSe/rtFDCRa3GjG9EGkyFUTSA6ELnnGA8zCISWTRgGKN3ALGIeGowz+KQ4ID4aAcN+cRSzLlUJYIPxHiDBessq+iDSulXV+PoH9zHRJ6Rx8zbdvx+XRZQcaNA/uyaKaDCK0HcCWQRVkbQSUBuLqhi1HydZ1FUeLX1NwfhVz6VmFQrCi38PdZeJ/tyi9gO+hU7ha2t3yB46VJ3awz9cu9aDr0DwXJjd2hdKq5jjOPNLEvqXH/Em6eW4gFrjNBsgFV5WPqrEhJTH7dG7vT50UXeTGuGDjYzh5qCU2Ves1pP9qOaTHQ+XeuoqQ5Nar/LUncWaeZNZlbCjdLd
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 457bd329-fcd7-4916-21e1-08d787bb959c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 15:20:03.3526 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ylCTGZnVZAaK/WgSKvA42UfXGul5M0w1vX+OFErG7NAiPN2lxcmzsNWO5FXO9hQmUEgL0PE21yS7A/eLueboeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR07MB3144
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1ijPjD-00D8ik-3d
Subject: Re: [tipc-discussion] [PATCH RFC] tipc: add automatic rekeying for
 TIPC encryption
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
Cc: 'Xin Long' <lxin@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Tuong Lien Tong <tuong.t.lien@dektech.com.au>
> Sent: 23-Dec-19 06:49
> To: Jon Maloy <jon.maloy@ericsson.com>; tipc-dek@dektech.com.au; tipc-
> discussion@lists.sourceforge.net
> Cc: 'Xin Long' <lucien.xin@gmail.com>; 'Xin Long' <lxin@redhat.com>; 'Ying Xue'
> <ying.xue@windriver.com>
> Subject: RE: [PATCH RFC] tipc: add automatic rekeying for TIPC encryption
> 
> Hi Jon,
> 
> Please see my comments below.
> 
> BR/Tuong
> 
> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: Saturday, December 21, 2019 11:03 PM
> To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; tipc-dek@dektech.com.au; tipc-
> discussion@lists.sourceforge.net
> Cc: Xin Long <lucien.xin@gmail.com>; Xin Long <lxin@redhat.com>; 'Ying Xue' <ying.xue@windriver.com>
> Subject: RE: [PATCH RFC] tipc: add automatic rekeying for TIPC encryption
> 
> Adding tipc-discusson to the recipient list of this disacussion.
> 
> ///jon
> 
> > -----Original Message-----
> > From: Jon Maloy
> > Sent: 21-Dec-19 10:56
> > To: Tuong Lien <tuong.t.lien@dektech.com.au>; tipc-dek@dektech.com.au
> > Subject: RE: [PATCH RFC] tipc: add automatic rekeying for TIPC encryption
> >
> > Hi Tuong,
> > I am getting more and more ambivalent about this.
> > Before introducing this we must weigh the pro and cons correctly:
> >
> > Pros:
> > - It will give less time for a sniffer to crack the key, since we change it often.
> > - If a sniffer cracks a key, he only gets access to messages from the node owning that key, not the whole
> > cluster.
> 
> [Tuong]: - implicit authentication (since the initial key for a node or the cluster is set by user...).
> 
> >
> > Cons:
> > - Larger code footprint.
> > - No forward security. If a sniffer gets hold of a node key, he can listen forever, as you have already
> noted.
> [Tuong]: Yes and this can be vital from a security perspective!
> 
> > - New nodes cannot be added to the cluster unless there is a way for the user land framework to read the
> > current key on each node and distribute to the new node.
> > - What happens when a node restarts, and forgets about all current keys, both its own and those of its
> > peers.
> >
> > The last two bullets are showstoppers,  in my view. We must find a way to add/re-insert nodes as easily as
> > we do now, at least.
> [Tuong]: The last two bullets are actually the same, so the trouble lies here as to how a "new" VM joins the
> cluster.
> 
> >
> > This means we must come back to the solution with a "master"  cluster key.
> > I suspect a typical user will just aim for adding the key or keys to
> > the cluster configuration file, and at a maximum update that key at regular intervals.
> >
> > So, maybe, apart from the 'current' node key we also keep a 'cluster'  master key that can always be used
> > for attaching new nodes, but allow for this to be updated via the tipc tool.
> 
> [Tuong]: This will require changes/updates to the current key handling mechanism since we support
> automatic key switching but at a time there is only one active key for TX & RX and it never "remembers" or
> hold any keys for others purpose...
> 
> I have an idea that we can turn it into a simple "rule" here: when a new VM joins the cluster, a new key will
> have to be generated & set for the entire cluster incl. the new VM(s) by user (or the framework which had
> set the initial key in advance...). The automatic key switching will then take over to make the new key active
> and the new VM(s) can join the cluster as well, this is what we have already supported... Later on, the
> automatic rekeying will start to work for all the VMs in the cluster as by this patch...

Not a bad idea. Basically, we replace all keys with a "cluster key" every time a new node is added, if I understand you correctly, and after a short while this key will become invalid.
So, we are back at an improved version of the cluster key option.

Another approach is to add the new key, but only use it for the new node, both for sending (from the other nodes) and reception (on the new node). Then we let the automatic key switching take over. The existing links continue with the existing keys. Basically a "cluster key" per node. This sounds both more secure and safer (from a robustness viewpoint) option.

Or maybe this is what you meant?

///jon


> In this way, we can also solve the authentication issue which could happen in the 2nd model (- where a key
> agreement protocol like DH or ECDH has to be used to establish a secure communication channel first...).
> What do you think?
> 
> > The user may then, of he wants, replace/update this key at regular intervals.
> > At the same time this key must be reserved for new/restarting nodes only, and not be permitted for use
> by
> > existing nodes which already are using 'current' keys.
> >
> > This would at least make it somewhat more acceptable for the user than the current approach.
> >
> > Regards
> > ///jon
> >
> >
> >
> >
> > > -----Original Message-----
> > > From: Jon Maloy
> > > Sent: 18-Dec-19 19:33
> > > To: Tuong Lien <tuong.t.lien@dektech.com.au>; tipc-dek@dektech.com.au
> > > Subject: RE: [PATCH RFC] tipc: add automatic rekeying for TIPC encryption
> > >
> > > I have a couple comments below, but in general it looks good.
> > > So, after some hesitation I suggest you send this to tipc-discussion for further review.
> > >
> > > ///jon
> > >
> > >
> > > > -----Original Message-----
> > > > From: Tuong Lien <tuong.t.lien@dektech.com.au>
> > > > Sent: 10-Dec-19 06:48
> > > > To: Jon Maloy <jon.maloy@ericsson.com>; tipc-dek@dektech.com.au
> > > > Subject: [PATCH RFC] tipc: add automatic rekeying for TIPC encryption
> > > >
> > > > This commit adds functionality for TIPC encryption to automatically
> > > > generate a new symmetric key and attach as new TX key for the own node.
> > > > The new key will also be distributed to peer nodes and set as RX keys,
> > > > i.e. the per-node key mode. This process of rekeying will be repeated,
> > > > for example every ~ 10 minutes (from the time a certain key becomes
> > > > active), so new session keys will be created and applied regularly to
> > > > the cluster.
> > > >
> > > > Since the key exchange needs a secure communication channel in advance,
> > > > the commit simplifies this by only starting with an initial key (either
> > > > in cluster or per-node key mode) which is set by user first (e.g. via
> > > > the "tipc node set key ..." command), so the entire cluster is already
> > > > secure and authenticated. After that, the rekeying will be scheduled as
> > > > said above.
> > > >
> > > > Also, the key exchange utilizes the broadcast link which is reliable.
> > > > And, the key switching with no impact on traffic is already supported
> > > > by the previous commit.
> > > >
> > > > ----------------------------------------------
> > > > Note: this solution has two issues:
> > > > - No forward secrecy
> > > > - how a new VM joins the cluster...?
> > >
> > > We still need a framework for distributing the initial key for a new node, but it will probably be simpler
> > > than before since we don't need to distribute keys regularly.
> > >
> > > > ----------------------------------------------
> > > >
> > > > Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> > > > ---
> > > >  net/tipc/bcast.c  |   4 +-
> > > >  net/tipc/bcast.h  |   2 +
> > > >  net/tipc/crypto.c | 195 +++++++++++++++++++++++++++++++++++++++++++++++++++++-
> > > >  net/tipc/crypto.h |   1 +
> > > >  net/tipc/link.c   |   3 +
> > > >  net/tipc/msg.h    |   1 +
> > > >  net/tipc/node.c   |   8 +++
> > > >  net/tipc/node.h   |   1 +
> > > >  8 files changed, 211 insertions(+), 4 deletions(-)
> > > >
> > > > diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> > > > index 55aeba681cf4..330b683f335e 100644
> > > > --- a/net/tipc/bcast.c
> > > > +++ b/net/tipc/bcast.c
> > > > @@ -249,8 +249,8 @@ static void tipc_bcast_select_xmit_method(struct net *net, int dests,
> > > >   * Consumes the buffer chain.
> > > >   * Returns 0 if success, otherwise errno: -EHOSTUNREACH,-EMSGSIZE
> > > >   */
> > > > -static int tipc_bcast_xmit(struct net *net, struct sk_buff_head *pkts,
> > > > -			   u16 *cong_link_cnt)
> > > > +int tipc_bcast_xmit(struct net *net, struct sk_buff_head *pkts,
> > > > +		    u16 *cong_link_cnt)
> > > >  {
> > > >  	struct tipc_link *l = tipc_bc_sndlink(net);
> > > >  	struct sk_buff_head xmitq;
> > > > diff --git a/net/tipc/bcast.h b/net/tipc/bcast.h
> > > > index 9e847d9617d3..f095a2ac27cb 100644
> > > > --- a/net/tipc/bcast.h
> > > > +++ b/net/tipc/bcast.h
> > > > @@ -89,6 +89,8 @@ void tipc_bcast_toggle_rcast(struct net *net, bool supp);
> > > >  int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
> > > >  		    struct tipc_mc_method *method, struct tipc_nlist *dests,
> > > >  		    u16 *cong_link_cnt);
> > > > +int tipc_bcast_xmit(struct net *net, struct sk_buff_head *pkts,
> > > > +		    u16 *cong_link_cnt);
> > > >  int tipc_bcast_rcv(struct net *net, struct tipc_link *l, struct sk_buff *skb);
> > > >  void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
> > > >  			struct tipc_msg *hdr);
> > > > diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
> > > > index 990a872cec46..b415c9adf14d 100644
> > > > --- a/net/tipc/crypto.c
> > > > +++ b/net/tipc/crypto.c
> > > > @@ -36,12 +36,17 @@
> > > >
> > > >  #include <crypto/aead.h>
> > > >  #include <crypto/aes.h>
> > > > +#include <crypto/rng.h>
> > > >  #include "crypto.h"
> > > > +#include "msg.h"
> > > > +#include "bcast.h"
> > > >
> > > >  #define TIPC_TX_PROBE_LIM	msecs_to_jiffies(1000) /* > 1s */
> > > >  #define TIPC_TX_LASTING_LIM	msecs_to_jiffies(120000) /* 2 mins */
> > > >  #define TIPC_RX_ACTIVE_LIM	msecs_to_jiffies(3000) /* 3s */
> > > >  #define TIPC_RX_PASSIVE_LIM	msecs_to_jiffies(180000) /* 3 mins */
> > > > +#define TIPC_REKEYING_TIME	msecs_to_jiffies(600000) /* 10 mins */
> > > > +
> > > >  #define TIPC_MAX_TFMS_DEF	10
> > > >  #define TIPC_MAX_TFMS_LIM	1000
> > > >
> > > > @@ -132,6 +137,7 @@ struct tipc_tfm {
> > > >   * @mode: crypto mode is applied to the key
> > > >   * @hint[]: a hint for user key
> > > >   * @rcu: struct rcu_head
> > > > + * @keylen: the aead key length
> > > >   * @seqno: the key seqno (cluster scope)
> > > >   * @refcnt: the key reference counter
> > > >   */
> > > > @@ -146,6 +152,7 @@ struct tipc_aead {
> > > >  	u8 mode;
> > > >  	char hint[TIPC_AEAD_HINT_LEN + 1];
> > > >  	struct rcu_head rcu;
> > > > +	unsigned int keylen;
> > > >
> > > >  	atomic64_t seqno ____cacheline_aligned;
> > > >  	refcount_t refcnt ____cacheline_aligned;
> > > > @@ -172,6 +179,8 @@ struct tipc_crypto_stats {
> > > >   * @timer1: general timer 1 (jiffies)
> > > >   * @timer2: general timer 1 (jiffies)
> > > >   * @lock: tipc_key lock
> > > > + * @work: delayed work for rekeying
> > > > + * @skey: session key
> > > >   */
> > > >  struct tipc_crypto {
> > > >  	struct net *net;
> > > > @@ -186,6 +195,8 @@ struct tipc_crypto {
> > > >  	unsigned long timer1;
> > > >  	unsigned long timer2;
> > > >  	spinlock_t lock; /* crypto lock */
> > > > +	struct delayed_work work;
> > > > +	struct tipc_aead_key *skey;
> > > >
> > > >  } ____cacheline_aligned;
> > > >
> > > > @@ -210,6 +221,8 @@ static void tipc_aead_users_inc(struct tipc_aead __rcu *aead, int lim);
> > > >  static void tipc_aead_users_dec(struct tipc_aead __rcu *aead, int lim);
> > > >  static void tipc_aead_users_set(struct tipc_aead __rcu *aead, int val);
> > > >  static struct crypto_aead *tipc_aead_tfm_next(struct tipc_aead *aead);
> > > > +static struct tipc_aead_key *tipc_aead_key_generate(unsigned int keylen);
> > > > +static int tipc_aead_key_distribute(struct net *net, struct tipc_aead_key *skey);
> > > >  static int tipc_aead_init(struct tipc_aead **aead, struct tipc_aead_key *ukey,
> > > >  			  u8 mode);
> > > >  static int tipc_aead_clone(struct tipc_aead **dst, struct tipc_aead *src);
> > > > @@ -251,6 +264,7 @@ static char *tipc_crypto_key_dump(struct tipc_crypto *c, char *buf);
> > > >  static char *tipc_key_change_dump(struct tipc_key old, struct tipc_key new,
> > > >  				  char *buf);
> > > >  #endif
> > > > +static void tipc_crypto_rekey(struct work_struct *work);
> > > >
> > > >  #define key_next(cur) ((cur) % KEY_MAX + 1)
> > > >
> > > > @@ -506,6 +520,7 @@ static int tipc_aead_init(struct tipc_aead **aead, struct tipc_aead_key
> *ukey,
> > > >  	tmp->mode = mode;
> > > >  	tmp->cloned = NULL;
> > > >  	tmp->authsize = TIPC_AES_GCM_TAG_SIZE;
> > > > +	tmp->keylen = ukey->keylen;
> > > >  	memcpy(&tmp->salt, ukey->key + keylen, TIPC_AES_GCM_SALT_SIZE);
> > > >  	atomic_set(&tmp->users, 0);
> > > >  	atomic64_set(&tmp->seqno, 0);
> > > > @@ -1368,8 +1383,9 @@ int tipc_crypto_start(struct tipc_crypto **crypto, struct net *net,
> > > >  	c->timer1 = jiffies;
> > > >  	c->timer2 = jiffies;
> > > >  	spin_lock_init(&c->lock);
> > > > -	*crypto = c;
> > > > +	INIT_DELAYED_WORK(&c->work, tipc_crypto_rekey);
> > > >
> > > > +	*crypto = c;
> > > >  	return 0;
> > > >  }
> > > >
> > > > @@ -1382,6 +1398,10 @@ void tipc_crypto_stop(struct tipc_crypto **crypto)
> > > >  	if (!*crypto)
> > > >  		return;
> > > >
> > > > +	/* Cancel any rekeying work */
> > > > +	c = *crypto;
> > > > +	cancel_delayed_work_sync(&c->work);
> > > > +
> > > >  	rcu_read_lock();
> > > >  	/* RX stopping? => decrease TX key users if any */
> > > >  	is_rx = !!((*crypto)->node);
> > > > @@ -1397,7 +1417,6 @@ void tipc_crypto_stop(struct tipc_crypto **crypto)
> > > >  	}
> > > >
> > > >  	/* Release AEAD keys */
> > > > -	c = *crypto;
> > > >  	for (k = KEY_MIN; k <= KEY_MAX; k++)
> > > >  		tipc_aead_put(rcu_dereference(c->aead[k]));
> > > >  	rcu_read_unlock();
> > > > @@ -1442,6 +1461,9 @@ void tipc_crypto_timeout(struct tipc_crypto *rx)
> > > >  	pr_info("TX(%s): key %d is activated!\n", tipc_own_id_string(tx->net),
> > > >  		key.pending);
> > > >
> > > > +	/* Schedule rekeying */
> > > > +	schedule_delayed_work(&tx->work, TIPC_REKEYING_TIME);
> > > > +
> > > >  s1:
> > > >  	spin_unlock(&tx->lock);
> > > >
> > > > @@ -1984,3 +2006,172 @@ static char *tipc_key_change_dump(struct tipc_key old, struct
> tipc_key
> > > > new,
> > > >  	return buf;
> > > >  }
> > > >  #endif
> > > > +
> > > > +static struct tipc_aead_key *tipc_aead_key_generate(unsigned int keylen)
> > > > +{
> > > > +	struct tipc_aead_key *skey;
> > > > +	int rc;
> > > > +
> > > > +	if (!keylen)
> > > > +		return NULL;
> > > > +
> > > > +	skey = kmalloc(sizeof(*skey) + keylen, GFP_ATOMIC);
> > > > +	skey->keylen = keylen;
> > > > +	strcpy(skey->alg_name, "gcm(aes)");
> > > > +
> > > > +	/* Obtain a key via the default RNG (like ECC) */
> > > > +	rc = crypto_get_default_rng();
> > > > +	if (unlikely(rc))
> > > > +		goto exit;
> > > > +
> > > > +	rc = crypto_rng_get_bytes(crypto_default_rng, skey->key, keylen);
> > > > +	crypto_put_default_rng();
> > > > +	if (unlikely(rc))
> > > > +		goto exit;
> > > > +
> > > > +	return skey;
> > > > +
> > > > +exit:
> > > > +	kfree(skey);
> > > > +	return NULL;
> > > > +}
> > > > +
> > > > +static int tipc_aead_key_distribute(struct net *net, struct tipc_aead_key *skey)
> > > > +{
> > > > +	struct sk_buff_head pkts;
> > > > +	struct tipc_msg *hdr;
> > > > +	struct sk_buff *skb;
> > > > +	__be32 keylen = htonl(skey->keylen);
> > > > +	u16 size, cong_link_cnt;
> > > > +	u8 *data;
> > > > +	int rc;
> > > > +
> > > > +	size = tipc_aead_key_size(skey);
> > > > +	skb = tipc_buf_acquire(INT_H_SIZE + size, GFP_ATOMIC);
> > > > +	if (!skb)
> > > > +		return -ENOMEM;
> > > > +
> > > > +	hdr = buf_msg(skb);
> > > > +	tipc_msg_init(tipc_own_addr(net), hdr, KEY_EXCHANGER, 0,
> > > > +		      INT_H_SIZE, 0);
> > > > +
> > > > +	msg_set_non_seq(hdr, 1);
> > > > +	msg_set_size(hdr, INT_H_SIZE + size);
> > > > +
> > > > +	data = msg_data(hdr);
> > > > +	memcpy(data, skey->alg_name, TIPC_AEAD_ALG_NAME);
> > > > +	memcpy(data + TIPC_AEAD_ALG_NAME, (u8 *)&keylen, sizeof(__be32));
> > > > +	memcpy(data + TIPC_AEAD_ALG_NAME + sizeof(__be32), skey->key,
> > > > +	       skey->keylen);
> > > > +
> > > > +	__skb_queue_head_init(&pkts);
> > > > +	__skb_queue_tail(&pkts, skb);
> > > > +	rc = tipc_bcast_xmit(net, &pkts, &cong_link_cnt);
> > > > +
> > > > +	return rc;
> > > > +}
> > > > +
> > > > +int tipc_aead_key_rcv(struct net *net, struct sk_buff *skb)
> > > > +{
> > > > +	struct tipc_msg *hdr = buf_msg(skb);
> > > > +	struct tipc_crypto *rx;
> > > > +	u16 size = msg_data_sz(hdr);
> > > > +	u8 *data = msg_data(hdr);
> > > > +	unsigned int keylen;
> > > > +	int rc = 0;
> > > > +
> > > > +	rx = tipc_node_crypto_rx_by_addr(net, msg_prevnode(hdr));
> > > > +	if (unlikely(!rx || rx->skey)) {
> > > > +		pr_err("RX(%s): no RX or one key has received\n",
> > > > +		       (rx) ? tipc_node_get_id_str(rx->node) : "-");
> > > > +		rc = -EKEYREJECTED;
> > > > +		goto exit;
> > > > +	}
> > > > +
> > > > +	/* Sanity check */
> > > > +	keylen = ntohl(*((__be32*)(data + TIPC_AEAD_ALG_NAME)));
> > > > +	if (unlikely(size != sizeof(struct tipc_aead_key) + keylen)) {
> > > > +		pr_err("RX(%s): key is not valid, keylen %d, size %d\n",
> > > > +		       tipc_node_get_id_str(rx->node), keylen, size);
> > > > +		rc = -EFAULT;
> > > > +		goto exit;
> > > > +	}
> > > > +
> > > > +	/* Allocate memory for the key */
> > > > +	rx->skey = kmalloc(size, GFP_ATOMIC);
> > > > +	if (unlikely(!rx->skey)) {
> > > > +		pr_err("RX(%s): no memory for session key\n",
> > > > +		       tipc_node_get_id_str(rx->node));
> > > > +		rc = -ENOMEM;
> > > > +		goto exit;
> > > > +	}
> > > > +
> > > > +	/* Copy key from msg data */
> > > > +	rx->skey->keylen = keylen;
> > > > +	memcpy(rx->skey->alg_name, data, TIPC_AEAD_ALG_NAME);
> > > > +	memcpy(rx->skey->key, data + TIPC_AEAD_ALG_NAME + sizeof(__be32),
> > > > +	       rx->skey->keylen);
> > > > +
> > > > +	/* Schedule key attaching on this RX */
> > > > +	schedule_delayed_work(&rx->work, 0);
> > > > +
> > > > +exit:
> > > > +	if (rx)
> > > > +		tipc_node_put(rx->node);
> > > > +	kfree_skb(skb);
> > > > +	return rc;
> > > > +}
> > > > +
> > > > +static void tipc_crypto_rekey(struct work_struct *work)
> > > > +{
> > > > +	struct delayed_work *delayed_work = to_delayed_work(work);
> > > > +	struct tipc_crypto *c = container_of(delayed_work, struct tipc_crypto,
> > > > +					     work);
> > > > +	struct tipc_aead *aead;
> > > > +	struct tipc_key key;
> > > > +	unsigned int keylen = 0;
> > > > +	int rc;
> > > > +
> > > > +	/* Generate new session key for TX crypto if not yet */
> > > > +	if (!c->node && !c->skey) {
> > > > +		/* Make sure we had a TX key active i.e. secured channel */
> > > > +		key = c->key;
> > > > +		if (!key.active || key.pending)
> > > > +			return;
> > > > +
> > > > +		rcu_read_lock();
> > > > +		aead = tipc_aead_get(c->aead[key.active]);
> > > > +		if (aead) {
> > > > +			keylen = aead->keylen;
> > > > +			tipc_aead_put(aead);
> > > > +		}
> > > > +		rcu_read_unlock();
> > > > +
> > > > +		/* Generate new key */
> > > > +		c->skey = tipc_aead_key_generate(keylen);
> > > > +		if (unlikely(!c->skey))
> > > > +			goto retry;
> > > > +
> > > > +		/* Distribute key to peers */
> > > > +		rc = tipc_aead_key_distribute(c->net, c->skey);
> > > > +		if (unlikely(rc)) {
> > > > +			kfree(c->skey);
> > > > +			c->skey = NULL;
> > > > +			goto retry;
> > > > +		}
> > > > +	}
> > > > +
> > > > +	/* Attach the new key to TX/RX */
> > > > +	BUG_ON(!c->skey);
> > >
> > > BUG_ON() in production code is always frowned upon.
> > > Better a warning and (if possible) continue with the old key.
> > >
> > >
> > > > +	rc = tipc_crypto_key_init(c, c->skey, PER_NODE_KEY);
> > > > +	if (unlikely(rc == -ENOMEM || rc == -EBUSY))
> > > > +		goto retry;
> > > > +
> > > > +	kfree(c->skey);
> > > > +	c->skey = NULL;
> > > > +	return;
> > > > +
> > > > +retry:
> > > > +	/* Let's try again after 1 min */
> > > > +	schedule_delayed_work(&c->work, msecs_to_jiffies(60000));
> > > > +}
> > > > diff --git a/net/tipc/crypto.h b/net/tipc/crypto.h
> > > > index c3de769f49e8..d222fcafa88d 100644
> > > > --- a/net/tipc/crypto.h
> > > > +++ b/net/tipc/crypto.h
> > > > @@ -161,6 +161,7 @@ int tipc_crypto_key_init(struct tipc_crypto *c, struct tipc_aead_key *ukey,
> > > >  			 u8 mode);
> > > >  void tipc_crypto_key_flush(struct tipc_crypto *c);
> > > >  int tipc_aead_key_validate(struct tipc_aead_key *ukey);
> > > > +int tipc_aead_key_rcv(struct net *net, struct sk_buff *skb);
> > > >  bool tipc_ehdr_validate(struct sk_buff *skb);
> > > >
> > > >  #endif /* _TIPC_CRYPTO_H */
> > > > diff --git a/net/tipc/link.c b/net/tipc/link.c
> > > > index 24d4d10756d3..6e153f5d3a68 100644
> > > > --- a/net/tipc/link.c
> > > > +++ b/net/tipc/link.c
> > > > @@ -1217,6 +1217,9 @@ static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
> > > >  	case MSG_FRAGMENTER:
> > > >  	case BCAST_PROTOCOL:
> > > >  		return false;
> > > > +	case KEY_EXCHANGER:
> > > > +		tipc_aead_key_rcv(l->net, skb);
> > > > +		return true;
> > > >  	default:
> > > >  		pr_warn("Dropping received illegal msg type\n");
> > > >  		kfree_skb(skb);
> > > > diff --git a/net/tipc/msg.h b/net/tipc/msg.h
> > > > index 6d466ebdb64f..227fb708c32c 100644
> > > > --- a/net/tipc/msg.h
> > > > +++ b/net/tipc/msg.h
> > > > @@ -82,6 +82,7 @@ struct plist;
> > > >  #define  NAME_DISTRIBUTOR     11
> > > >  #define  MSG_FRAGMENTER       12
> > > >  #define  LINK_CONFIG          13
> > > > +#define  KEY_EXCHANGER        14
> > > >  #define  SOCK_WAKEUP          14       /* pseudo user */
> > > >  #define  TOP_SRV              15       /* pseudo user */
> > > >
> > > > diff --git a/net/tipc/node.c b/net/tipc/node.c
> > > > index ab04e00cb95b..19a560cfb10f 100644
> > > > --- a/net/tipc/node.c
> > > > +++ b/net/tipc/node.c
> > > > @@ -276,6 +276,14 @@ struct tipc_crypto *tipc_node_crypto_rx_by_list(struct list_head *pos)
> > > >  {
> > > >  	return container_of(pos, struct tipc_node, list)->crypto_rx;
> > > >  }
> > > > +
> > > > +struct tipc_crypto *tipc_node_crypto_rx_by_addr(struct net *net, u32 addr)
> > > > +{
> > > > +	struct tipc_node *n;
> > > > +
> > > > +	n = tipc_node_find(net, addr);
> > > > +	return (n) ? n->crypto_rx : NULL;
> > > > +}
> > > >  #endif
> > > >
> > > >  void tipc_node_free(struct rcu_head *rp)
> > > > diff --git a/net/tipc/node.h b/net/tipc/node.h
> > > > index a6803b449a2c..7b52a2a2b855 100644
> > > > --- a/net/tipc/node.h
> > > > +++ b/net/tipc/node.h
> > > > @@ -83,6 +83,7 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
> > > >  #ifdef CONFIG_TIPC_CRYPTO
> > >
> > > #ifdefs directly in the code never looks good, and  should be avoided.
> > > I think you in many cases can replace the #ifdef sections with macros, and put the #ifdef inside the
> > macro.
> > > This would of course require another patch, since we already have some such sections in the existing
> > code.
> > >
> > > >  struct tipc_crypto *tipc_node_crypto_rx(struct tipc_node *__n);
> > > >  struct tipc_crypto *tipc_node_crypto_rx_by_list(struct list_head *pos);
> > > > +struct tipc_crypto *tipc_node_crypto_rx_by_addr(struct net *net, u32 addr);
> > > >  #endif
> > > >  u32 tipc_node_try_addr(struct net *net, u8 *id, u32 addr);
> > > >  void tipc_node_check_dest(struct net *net, u32 onode, u8 *peer_id128,
> > > > --
> > > > 2.13.7
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
