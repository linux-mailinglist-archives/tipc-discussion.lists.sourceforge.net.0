Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E8CDC9D9
	for <lists+tipc-discussion@lfdr.de>; Fri, 18 Oct 2019 17:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t4CEnPP3tzucEdQLH4Gh6qgzV+slXvfshiz0C1ajAas=; b=gcIuwWXNOCgDzeas1y2KDTNM+
	VakZKuHZOAalpYibnUgn3FsaKRJxQK/5lLOK72/4kMFf82V1S+ZL7Ks7hKPf5IWVUaAPG1RPGHOw+
	Dmp8MRWcA66UpFy1vibBcO6OoRmha4Aebml4vyslF/czcaXDOmI9Rx5tJoeYWhz01GxOo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iLUZP-0005kc-8h; Fri, 18 Oct 2019 15:53:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iLUZN-0005kU-O4
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Oct 2019 15:53:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EiK3hdcQ1KAJhnBW4aMOqeYdv6C3HuK8lQagin7G9mE=; b=fxWvQCge9m1BvvvhN4RbY2i6dk
 ytCzS08NCiWg6U/LK0kZXH/rue0ihKZ6Me3fJ0acW4BGMyjV8yVHXzTqMxaZv0SNTUs8XWFHgnyb6
 6eXWw70U09O2O7jMFcAf7l5N+YuNzPNzmEG31FUuiPXvy3kfuYKDGIoQ41yNx2AL+TXg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EiK3hdcQ1KAJhnBW4aMOqeYdv6C3HuK8lQagin7G9mE=; b=QOmdCu2Xlgou12Tlh2qc2Xgtty
 OPL1ZRVvraqLQf68QES0i9PtsMQi09WXSgvy9Q4rRHgclZjLhnPFluP4wvg/J6xL2S+3PeupFDnVb
 /ffiU8hHHVXT75jLi11QjLFj6AN4BU4osCefHCgANKF9eEDFDVBelbCaIsNPQEASvpNU=;
Received: from mail-eopbgr720085.outbound.protection.outlook.com
 ([40.107.72.85] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iLUZE-00DdMG-R5
 for tipc-discussion@lists.sourceforge.net; Fri, 18 Oct 2019 15:53:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CGS4iXhZ4blaWz0/yAiktS0M001SkcNkYoNWdSbkfQHTaXHGjM2cUngYRqHfriZzyR7hqMvNC9eZOfNpjxL4nxr+aSmZc5DVfgsWBkiMmC5NEwsEmijXZ647aViHISiGxKuV6E1BNYTKaorSk8jhew4kXCMdk6JxMBWLPAbG3R0Efa1WMKdNWHR1Gsx1Zsr/J0nzTgsbBrSF8t6MtMK+KVTqWPf5bYP0mp2drOCKN0Xbo/220HCPg3w0nlVZ8CICfGCknjznFZbjqFmRlUqFEDSsijCtahqomGSXt5PdXE4AsFkGW4C/0YWoQotC/AhEtNjNkjltcJjHWiSmw9411Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EiK3hdcQ1KAJhnBW4aMOqeYdv6C3HuK8lQagin7G9mE=;
 b=cZOMljl4ioPGfLEPTFaGH0ppqHZMhPP+Hv1RKO3Zli/zuHwIUZLG5LH6lzeF1t9bXRj7QpnOMfVZogU/24inU7CgQiJ8gMAoG6fmNFk6q367syntvbpQicrcAhRkiINMuWdChKgyYT4GOQkhg+C47joXyWosSfjjDneOrEP5YLITvpg8ijwKsnCLW0W5CmIBRfhYtynFrhXxvKI9MyuqrPmLVrb564T0uHyQy3r2jfciQ5xANQxM2tP58ykf3wlMej6MqVhDb/biKliOnR3RmTbsBLgiqBOUCX6f1PoccAALyK7rjNmkHpQBNTg0JrKa1fm58diWjc1b6Tae3fbYwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EiK3hdcQ1KAJhnBW4aMOqeYdv6C3HuK8lQagin7G9mE=;
 b=TuddM3FJKRlK7A8xGmTgXak24K4luxUS8d28wOwy7zo5hUC9vIpgRtvyk/iEWz1X8n/r8P5jbgbaI2E3/GXTy8n/wkCH8nXWpanIPMjdyroTLF2Ihn8lkn2c7zfEX6joJ6EbcVwXCQ3E+fyDnLdGngU2J60LXwFS93i2qBNCnS0=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3589.namprd15.prod.outlook.com (52.132.228.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Fri, 18 Oct 2019 14:20:58 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c51c:4c01:61b6:ae11]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::c51c:4c01:61b6:ae11%7]) with mapi id 15.20.2347.026; Fri, 18 Oct 2019
 14:20:58 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next] tipc: improve throughput between nodes in netns
Thread-Index: AQHVhNNIiTCRJkVA1E6MYa/P9MXziKde3fGggAEzMICAAF6XEA==
Date: Fri, 18 Oct 2019 14:20:57 +0000
Message-ID: <CH2PR15MB357512A2BF20AFF87ADBB4D59A6C0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191017101017.6672-1-hoang.h.le@dektech.com.au>
 <CH2PR15MB3575EEAF690AF68A0413193A9A6D0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <01a601d5858d$65c4b1d0$314e1570$@dektech.com.au>
In-Reply-To: <01a601d5858d$65c4b1d0$314e1570$@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [198.24.6.220]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 551845ed-abc9-408f-d90f-08d753d66512
x-ms-traffictypediagnostic: CH2PR15MB3589:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB358973E02F512B91EB5D74389A6C0@CH2PR15MB3589.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(39860400002)(376002)(346002)(13464003)(189003)(199004)(2501003)(30864003)(81156014)(14454004)(55016002)(81166006)(52536014)(2906002)(99286004)(71190400001)(74316002)(8676002)(5660300002)(305945005)(44832011)(71200400001)(6246003)(7736002)(25786009)(8936002)(11346002)(33656002)(316002)(229853002)(110136005)(66476007)(7696005)(9686003)(476003)(486006)(102836004)(478600001)(446003)(2201001)(256004)(26005)(66446008)(66556008)(86362001)(6436002)(561944003)(76116006)(66946007)(14444005)(66066001)(76176011)(6116002)(186003)(6506007)(53546011)(5024004)(3846002)(64756008)(579004)(559001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3589;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sy60q2k2frPFR6uXx3fWQh5dB6V3pBeOb0eLfEypKaJwnd7E40QHpErnqSwrEW00uXqyJlEOPAZkI2fu+0Dt25/uIG74AgMITLS5fFj9IaRVfbJL4pAFkMatqqnKA3Dmc9Z2OS1Czof3u6H7UWkV5Y3cVHfXh1LAUuaB8B8qTXSmHC6kfsIl8ZkSS7nuoxGTyOFVY2cX2kZ/LLxXOJcynT32fCXSSiKlhfq3rGI9YK2Nq4Qi362xXFsIkZzMKe6JP7qyCOnTiah1SQn3ZSCK/BSs+ta0leyjPF8gcBZ6V55xlXgsEZiU9kn6Ng5K3glwBJ2Ww+D07WwoOKqmn3MdYjcVL5c8eCdqdJwaGlHVIWtxFV4oq/lnYWSAT7BIxyKlgnFV+uztsQtp+ycq6DnzqMhck0OtjI2Sh0DLp21qkiY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 551845ed-abc9-408f-d90f-08d753d66512
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 14:20:57.8516 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2NekwptB0BhvH3JasRj3g6h/+x8DkM+eiufpkzvIYqQCV+kwhERgAJpnMbfTKE/S1PeB6LdRCkO4kvlWkSJcXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3589
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.72.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iLUZE-00DdMG-R5
Subject: Re: [tipc-discussion] [net-next] tipc: improve throughput between
 nodes in netns
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Hoang,
Our task is to establish that the message really came from the same node we have found in a local name space.
Imagine somebody is sniffing on a network, and finds there is a remote peer with proof(hash_mix)= M node id X and cluster id Y.
He then creates an illegitimate local name space with the proof(hash_mix)= N , node id X, but cluster id Z, so that all its discovery messages are dropped by the receiver.
He may then create fake discovery messages with proof(hash_mix)= N, node id X and cluster id Y, which will be accepted by the receiver and compared to the fake node's data.
Alas, they all match, and he has succeeded in hijacking traffic to the remote node, and this may happen even if the traffic was meant to be encrypted.

Admittedly there are some weaknesses in this scenario, e.g., he cannot do this if unless the remote node is temporarily down (maybe he can kill it with a fake RESET message?), and there are other reasons why this might be very hard to do. But, better safe than sorry, if we can avoid this with just a simple extra test that costs nothing.

Regards
///jon

> -----Original Message-----
> From: Hoang Le <hoang.h.le@dektech.com.au>
> Sent: 18-Oct-19 04:24
> To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; tipc-
> dek@dektech.com.au; tipc-discussion@lists.sourceforge.net
> Subject: RE: [net-next] tipc: improve throughput between nodes in netns
> 
> Hi Jon,
> 
> Thanks for good description.
> However, w.r.t your comment  "We even need to verify cluster ids.",  I'm still
> unclear why we need to isolate cluster ids here.
> I guess the node had been accepted already when bypassed at function
> tipc_disc_rcv. Then, we just check to apply new mechanism for kernel local
> namespaces.
> 
> Regars,
> Hoang
> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: Friday, October 18, 2019 2:20 AM
> To: Hoang Huu Le <hoang.h.le@dektech.com.au>; maloy@donjonn.com;
> tipc-dek@dektech.com.au; tipc-discussion@lists.sourceforge.net
> Subject: RE: [net-next] tipc: improve throughput between nodes in netns
> 
> Hi Hoang,
> We need a very good log text to justify this.
> 
> My proposal:
> 
> "Currently, TIPC transports intra-node user data messages directly socket to
> socket, hence shortcutting all the lower layers of the communication stack.
> This gives TIPC very good intra node performance, both regarding throughput
> and latency.
> 
> We now introduce a similar mechanism for TIPC data traffic across network
> name spaces located in the same kernel. On the send path, the call chain is as
> always accompanied by the sending node's network name space pointer.
> However, once we have reliably established that the receiving node is
> represented by a name space on the same host, we just replace the name
> space pointer with the receiving node/name space's ditto, and follow the
> regular socket receive patch though the receiving node. This technique gives
> us a throughput similar to the node internal throughput, several times larger
> than if we let the traffic go though the full network stack. As a comparison,
> max throughput for 64k messages is four times larger than TCP throughput for
> the same type of traffic.
> 
> To meet any security concerns, the following should be noted.
> 
> - All nodes joining a cluster are supposed to have been be certified and
> authenticated by mechanisms outside TIPC. This is no different for
> nodes/name spaces on the same host; they have to auto discover each other
> using the attached interfaces, and establish links which are supervised via the
> regular link monitoring mechanism. Hence, a kernel local node has no other
> way to join a cluster than any other node, and have to obey to policies set in
> the IP or device layers of the stack.
> 
> - Only when a sender has established with 100% certainty that the peer node
> is located in a kernel local name space does it choose to let user data messages,
> and only those, take the crossover path to the receiving node/name space.
> 
> - If the receiving node/name space  is removed, its name space pointer is
> invalidated at all peer nodes, and their neighbor link monitoring will eventually
> note that this node is gone.
> 
> - To ensure the "100% certainty" criteria, and prevent any possible spoofing,
> received discovery messages must contain a proof that they know a common
> secret. We use the hash_mix of the sending node/name space for this
> purpose, since it can be accessed directly by all other name spaces in the
> kernel. Upon reception of a discovery message, the receiver checks this proof
> against all the local name spaces' hash_mix:es.  If it finds a match, that, along
> with a matching node id and cluster id, this is deemed sufficient proof that the
> peer node in question is in a local name space, and a wormhole can be
> opened.
> 
> - We should also consider that TIPC is intended to be a cluster local IPC
> mechanism (just like e.g. UNIX sockets)  rather than a network protocol, and
> hence should be given more freedom to shortcut the lower protocol than
> other protocols.
> 
> Regarding traceability, we should notice that since commit 6c9081a3915d
> ("add loopback device tracing") it is possible to follow the node internal packet
> flow by just activating tcpdump on the loopback interface. This will be true
> even for this mechanism; by activating tcpdump on the invloved nodes'
> loopback interfaces their inter-name space messaging can easily be tracked."
> 
> I also think there should be a "Suggested-by: Jon Maloy
> <jon.maloy@ericsson.com>" at the bottom of the patch.
> 
> See more comments below.
> 
> 
> > -----Original Message-----
> > From: Hoang Le <hoang.h.le@dektech.com.au>
> > Sent: 17-Oct-19 06:10
> > To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; tipc-
> > dek@dektech.com.au
> > Subject: [net-next] tipc: improve throughput between nodes in netns
> >
> > Introduce traffic cross namespaces transmission as intranode.
> > By this way, throughput between nodes in namespace as fast as local.
> > Looks though the architectural view of TIPC, the new TIPC mechanism
> > for containers will not introduce any security or breaking the current
> > policies at
> > all:
> >
> > 1/ Extranode:
> >
> >       Node A                                             Node B
> > +-----------------+                               +-----------------+
> > |      TIPC       |                               |      TIPC       |
> > |   Application   |                               |   Application   |
> > |-----------------|                               |-----------------|
> > |                 |                               |                 |
> > |      TIPC       |TIPC address       TIPC address|      TIPC       |
> > |                 |                               |                 |
> > |-----------------|                               |-----------------|
> > | L2 or L3 Bearer |Bearer address   Bearer address| L2 or L3 Bearer |
> > |     Service     |                               |     Service     |
> > +-----------------+                               +-----------------+
> >        NIC                                                 NIC
> >         +---------------- Bearer Transport ----------------+
> >
> > 2/ Intranode:
> >       Node A                                             Node A
> > +-----------------+                               +-----------------+
> > |      TIPC       |                               |      TIPC       |
> > |   Application   |                               |   Application   |
> > |-----------------|                               |-----------------|
> > |                 |                               |                 |
> > |      TIPC       |TIPC address       TIPC address|      TIPC       |
> > |                 |                               |                 |
> > +-------+---------+                               +--------+--------+
> >         +--------------------------------------------------+
> >
> > 3/ For container (same as extranode):
> > +-----------------------------------------------------------------------+
> > |       Container                                        Container      |
> > | +-----------------+
> > | +-----------------+ +-----------------+
> > | +-----------------+ |
> > | |      TIPC       |                               |      TIPC       | |
> > | |   Application   |                               |   Application   | |
> > | |-----------------|
> > | |-----------------| |-----------------|
> > | |-----------------| |
> > | |                 |                               |                 | |
> > | |      TIPC       |TIPC address       TIPC address|      TIPC       | |
> > | |                 |                               |                 | |
> > | |-----------------|
> > | |-----------------| |-----------------|
> > | |-----------------| |
> > | | L2 or L3 Bearer |Bearer address   Bearer address| L2 or L3 Bearer | |
> > | |     Service     |                               |     Service     | |
> > | +-----------------+
> > | +-----------------+ +-----------------+
> > | +-----------------+ |
> > |      (vNIC)                                              (vNIC)       |
> > |         +              Host Kernel (KVM, Native)            +         |
> > |         +----------------Bearer Transport-------------------+         |
> > |                       (bridge, OpenVSwitch)                           |
> > |                                 +                                     |
> > |                         +-------+---------+                           |
> > |                         | L2 or L3 Bearer |                           |
> > |                         |     Service     |                           |
> > |                         |-----------------|                           |
> > |                         |                 |                           |
> > |                         |      TIPC       |TIPC address               |
> > |                         |                 |                           |
> > |                         |-----------------|                           |
> > |                         |      TIPC       |                           |
> > |                         |   Application   |                           |
> > |                         +-----------------+                           |
> > |
> > | |
> > +-----------------------------------------------------------------------+
> >
> > 4/ New design for container (same as intranode):
> > +-----------------------------------------------------------------------+
> > |       Container                                         Container     |
> > | +-----------------+
> > | +-----------------+ +-----------------+
> > | +-----------------+ |
> > | |      TIPC       |                               |      TIPC       | |
> > | |   Application   |                               |   Application   | |
> > | |-----------------|
> > | |-----------------| |-----------------|
> > | |-----------------| |
> > | |                 |                               |                 | |
> > | |      TIPC       |TIPC address       TIPC address|      TIPC       | |
> > | |                 |                               |                 | |
> > | +-------+---------+
> > | +-------+---------+ +--------+--------+
> > | +-------+---------+ |
> > |         +                Host Kernel (KVM, Native)         +          |
> > |         +-------------------------+------------------------+          |
> > |                                   +-------------+                     |
> > |                          +-----------------+    |                     |
> > |                          |      TIPC       |    |                     |
> > |                          |   Application   |    |                     |
> > |                          |-----------------|    |                     |
> > |                          |                 +----+                     |
> > |                          |      TIPC       |TIPC address              |
> > |                          |                 |                          |
> > |                          +-----------------+                          |
> > |
> > | |
> > +-----------------------------------------------------------------------+
> >
> > TIPC is as an IPC and to designate the transport layer as an "L2.5"
> > data link layer. When a TIPC node address has been accepted into a
> > cluster and located in the same kernel (as we are trying to ensure in
> > this patch), we are 100% certain it is legitimate and authentic.
> > So, I cannot see any reason why we should not be allowed to short-cut
> > for containers when security checks have already been done.
> 
> Those drawings are nice, but unnecessary in my view. I think my text above is
> sufficient as explanation of what we are doing.
> 
> >
> > Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> > ---
> >  net/tipc/discover.c   |  6 ++-
> >  net/tipc/msg.h        | 10 +++++
> >  net/tipc/name_distr.c |  2 +-
> >  net/tipc/node.c       | 94
> > +++++++++++++++++++++++++++++++++++++++++--
> >  net/tipc/node.h       |  4 +-
> >  net/tipc/socket.c     |  6 +--
> >  6 files changed, 111 insertions(+), 11 deletions(-)
> >
> > diff --git a/net/tipc/discover.c b/net/tipc/discover.c index
> > c138d68e8a69..98d4eea97eb7 100644
> > --- a/net/tipc/discover.c
> > +++ b/net/tipc/discover.c
> > @@ -38,6 +38,8 @@
> >  #include "node.h"
> >  #include "discover.h"
> >
> > +#include <net/netns/hash.h>
> > +
> >  /* min delay during bearer start up */
> >  #define TIPC_DISC_INIT	msecs_to_jiffies(125)
> >  /* max delay if bearer has no links */ @@ -94,6 +96,7 @@ static void
> > tipc_disc_init_msg(struct net *net, struct sk_buff *skb,
> >  	msg_set_dest_domain(hdr, dest_domain);
> >  	msg_set_bc_netid(hdr, tn->net_id);
> >  	b->media->addr2msg(msg_media_addr(hdr), &b->addr);
> > +	msg_set_peer_net_hash(hdr, net_hash_mix(net));
> 
> We should not add the hash directly, since that would be exposing kernel
> internal info to outside observers.
> What we need to add is a *proof*  that the sender knows the hash_mix in
> question. So, it should XOR its hash_mix with a TIPC/kernel
> global random value (also secret) and add the result to the message. The
> receiver does XOR on the proof and the same random value,
> and compares the result to the hash_mixes of the local name spaces to find a
> match.
> 
> 
> >  	msg_set_node_id(hdr, tipc_own_id(net));  }
> >
> > @@ -200,6 +203,7 @@ void tipc_disc_rcv(struct net *net, struct sk_buff
> > *skb,
> >  	u8 peer_id[NODE_ID_LEN] = {0,};
> >  	u32 dst = msg_dest_domain(hdr);
> >  	u32 net_id = msg_bc_netid(hdr);
> > +	u32 pnet_hash = msg_peer_net_hash(hdr);
> >  	struct tipc_media_addr maddr;
> >  	u32 src = msg_prevnode(hdr);
> >  	u32 mtyp = msg_type(hdr);
> > @@ -242,7 +246,7 @@ void tipc_disc_rcv(struct net *net, struct sk_buff
> > *skb,
> >  	if (!tipc_in_scope(legacy, b->domain, src))
> >  		return;
> >  	tipc_node_check_dest(net, src, peer_id, b, caps, signature,
> > -			     &maddr, &respond, &dupl_addr);
> > +			     pnet_hash, &maddr, &respond, &dupl_addr);
> >  	if (dupl_addr)
> >  		disc_dupl_alert(b, src, &maddr);
> >  	if (!respond)
> > diff --git a/net/tipc/msg.h b/net/tipc/msg.h index
> > 0daa6f04ca81..a8d0f28094f2 100644
> > --- a/net/tipc/msg.h
> > +++ b/net/tipc/msg.h
> > @@ -973,6 +973,16 @@ static inline void msg_set_grp_remitted(struct
> > tipc_msg *m, u16 n)
> >  	msg_set_bits(m, 9, 16, 0xffff, n);
> >  }
> >
> > +static inline void msg_set_peer_net_hash(struct tipc_msg *m, u32 n) {
> > +	msg_set_word(m, 9, n);
> > +}
> > +
> > +static inline u32 msg_peer_net_hash(struct tipc_msg *m) {
> > +	return msg_word(m, 9);
> > +}
> > +
> >  /* Word 10
> >   */
> >  static inline u16 msg_grp_evt(struct tipc_msg *m) diff --git
> > a/net/tipc/name_distr.c b/net/tipc/name_distr.c index
> > 836e629e8f4a..5feaf3b67380 100644
> > --- a/net/tipc/name_distr.c
> > +++ b/net/tipc/name_distr.c
> > @@ -146,7 +146,7 @@ static void named_distribute(struct net *net, struct
> > sk_buff_head *list,
> >  	struct publication *publ;
> >  	struct sk_buff *skb = NULL;
> >  	struct distr_item *item = NULL;
> > -	u32 msg_dsz = ((tipc_node_get_mtu(net, dnode, 0) - INT_H_SIZE) /
> > +	u32 msg_dsz = ((tipc_node_get_mtu(net, dnode, 0, false) - INT_H_SIZE)
> > +/
> >  			ITEM_SIZE) * ITEM_SIZE;
> >  	u32 msg_rem = msg_dsz;
> >
> > diff --git a/net/tipc/node.c b/net/tipc/node.c index
> > c8f6177dd5a2..9a4ffd647701 100644
> > --- a/net/tipc/node.c
> > +++ b/net/tipc/node.c
> > @@ -45,6 +45,8 @@
> >  #include "netlink.h"
> >  #include "trace.h"
> >
> > +#include <net/netns/hash.h>
> > +
> >  #define INVALID_NODE_SIG	0x10000
> >  #define NODE_CLEANUP_AFTER	300000
> >
> > @@ -126,6 +128,7 @@ struct tipc_node {
> >  	struct timer_list timer;
> >  	struct rcu_head rcu;
> >  	unsigned long delete_at;
> > +	struct net *pnet;
> >  };
> >
> >  /* Node FSM states and events:
> > @@ -184,7 +187,7 @@ static struct tipc_link *node_active_link(struct
> > tipc_node *n, int sel)
> >  	return n->links[bearer_id].link;
> >  }
> >
> > -int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel)
> > +int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool
> > +connected)
> >  {
> >  	struct tipc_node *n;
> >  	int bearer_id;
> > @@ -194,6 +197,14 @@ int tipc_node_get_mtu(struct net *net, u32 addr,
> > u32 sel)
> >  	if (unlikely(!n))
> >  		return mtu;
> >
> > +	/* Allow MAX_MSG_SIZE when building connection oriented message
> > +	 * if they are in the same core network
> > +	 */
> > +	if (n->pnet && connected) {
> > +		tipc_node_put(n);
> > +		return mtu;
> > +	}
> > +
> >  	bearer_id = n->active_links[sel & 1];
> >  	if (likely(bearer_id != INVALID_BEARER_ID))
> >  		mtu = n->links[bearer_id].mtu;
> > @@ -361,11 +372,14 @@ static void tipc_node_write_unlock(struct
> > tipc_node *n)  }
> >
> >  static struct tipc_node *tipc_node_create(struct net *net, u32 addr,
> > -					  u8 *peer_id, u16 capabilities)
> > +					  u8 *peer_id, u16 capabilities,
> > +					  u32 signature, u32 pnet_hash)
> >  {
> >  	struct tipc_net *tn = net_generic(net, tipc_net_id);
> >  	struct tipc_node *n, *temp_node;
> > +	struct tipc_net *tn_peer;
> >  	struct tipc_link *l;
> > +	struct net *tmp;
> >  	int bearer_id;
> >  	int i;
> >
> > @@ -400,6 +414,23 @@ static struct tipc_node *tipc_node_create(struct
> net
> > *net, u32 addr,
> >  	memcpy(&n->peer_id, peer_id, 16);
> >  	n->net = net;
> >  	n->capabilities = capabilities;
> > +	n->pnet = NULL;
> > +	for_each_net_rcu(tmp) {
> > +		/* Integrity checking whether node exists in namespace or not */
> > +		if (net_hash_mix(tmp) != pnet_hash)
> > +			continue;
> 
> See my comment above.
> 
> > +		tn_peer = net_generic(tmp, tipc_net_id);
> > +		if (!tn_peer)
> > +			continue;
> > +
> > +		if ((tn_peer->random & 0x7fff) != (signature & 0x7fff))
> > +			continue;
> > +
> > +		if (!memcmp(n->peer_id, tn_peer->node_id, NODE_ID_LEN)) {
> > +			n->pnet = tmp;
> > +			break;
> > +		}
> 
> We even need to verify cluster ids.
> 
> > +	}
> >  	kref_init(&n->kref);
> >  	rwlock_init(&n->lock);
> >  	INIT_HLIST_NODE(&n->hash);
> > @@ -979,7 +1010,7 @@ u32 tipc_node_try_addr(struct net *net, u8 *id,
> > u32 addr)
> >
> >  void tipc_node_check_dest(struct net *net, u32 addr,
> >  			  u8 *peer_id, struct tipc_bearer *b,
> > -			  u16 capabilities, u32 signature,
> > +			  u16 capabilities, u32 signature, u32 pnet_hash,
> >  			  struct tipc_media_addr *maddr,
> >  			  bool *respond, bool *dupl_addr)
> >  {
> > @@ -998,7 +1029,8 @@ void tipc_node_check_dest(struct net *net, u32
> > addr,
> >  	*dupl_addr = false;
> >  	*respond = false;
> >
> > -	n = tipc_node_create(net, addr, peer_id, capabilities);
> > +	n = tipc_node_create(net, addr, peer_id, capabilities, signature,
> > +			     pnet_hash);
> >  	if (!n)
> >  		return;
> >
> > @@ -1424,6 +1456,49 @@ static int __tipc_nl_add_node(struct
> tipc_nl_msg
> > *msg, struct tipc_node *node)
> >  	return -EMSGSIZE;
> >  }
> >
> > +static void tipc_lxc_xmit(struct net *pnet, struct sk_buff_head *list)
> > +{
> > +	struct tipc_msg *hdr = buf_msg(skb_peek(list));
> > +	struct sk_buff_head inputq;
> > +
> > +	switch (msg_user(hdr)) {
> > +	case TIPC_LOW_IMPORTANCE:
> > +	case TIPC_MEDIUM_IMPORTANCE:
> > +	case TIPC_HIGH_IMPORTANCE:
> > +	case TIPC_CRITICAL_IMPORTANCE:
> > +		if (msg_connected(hdr) || msg_named(hdr)) {
> > +			spin_lock_init(&list->lock);
> > +			tipc_sk_rcv(pnet, list);
> > +			return;
> > +		}
> > +		if (msg_mcast(hdr)) {
> > +			skb_queue_head_init(&inputq);
> > +			tipc_sk_mcast_rcv(pnet, list, &inputq);
> > +			__skb_queue_purge(list);
> > +			skb_queue_purge(&inputq);
> > +			return;
> > +		}
> > +		return;
> > +	case MSG_FRAGMENTER:
> > +		if (tipc_msg_assemble(list)) {
> > +			skb_queue_head_init(&inputq);
> > +			tipc_sk_mcast_rcv(pnet, list, &inputq);
> > +			__skb_queue_purge(list);
> > +			skb_queue_purge(&inputq);
> > +		}
> > +		return;
> 
> > +	case LINK_PROTOCOL:
> > +	case NAME_DISTRIBUTOR:
> > +	case GROUP_PROTOCOL:
> > +	case CONN_MANAGER:
> 
> GROUP_PROTOCOL and CONN_MANAGER messages must also follow the
> wormhole path, otherwise they (e.g. CONN_ACK) will be out of synch
> with the corresponding data messages, and probably result in poorer
> throughput.
> 
> Regards
> ///jon
> 
> 
> > +	case TUNNEL_PROTOCOL:
> > +	case BCAST_PROTOCOL:
> > +		return;
> > +	default:
> > +		return;
> > +	};
> > +}
> > +
> >  /**
> >   * tipc_node_xmit() is the general link level function for message sending
> >   * @net: the applicable net namespace
> > @@ -1439,6 +1514,7 @@ int tipc_node_xmit(struct net *net, struct
> > sk_buff_head *list,
> >  	struct tipc_link_entry *le = NULL;
> >  	struct tipc_node *n;
> >  	struct sk_buff_head xmitq;
> > +	bool node_up = false;
> >  	int bearer_id;
> >  	int rc;
> >
> > @@ -1455,6 +1531,16 @@ int tipc_node_xmit(struct net *net, struct
> > sk_buff_head *list,
> >  		return -EHOSTUNREACH;
> >  	}
> >
> > +	node_up = node_is_up(n);
> > +	if (node_up && n->pnet && check_net(n->pnet)) {
> > +		/* xmit inner linux container */
> > +		tipc_lxc_xmit(n->pnet, list);
> > +		if (likely(skb_queue_empty(list))) {
> > +			tipc_node_put(n);
> > +			return 0;
> > +		}
> > +	}
> > +
> >  	tipc_node_read_lock(n);
> >  	bearer_id = n->active_links[selector & 1];
> >  	if (unlikely(bearer_id == INVALID_BEARER_ID)) { diff --git
> > a/net/tipc/node.h b/net/tipc/node.h index 291d0ecd4101..11eb95ce358b
> > 100644
> > --- a/net/tipc/node.h
> > +++ b/net/tipc/node.h
> > @@ -75,7 +75,7 @@ u32 tipc_node_get_addr(struct tipc_node *node);
> >  u32 tipc_node_try_addr(struct net *net, u8 *id, u32 addr);  void
> > tipc_node_check_dest(struct net *net, u32 onode, u8 *peer_id128,
> >  			  struct tipc_bearer *bearer,
> > -			  u16 capabilities, u32 signature,
> > +			  u16 capabilities, u32 signature, u32 pnet_hash,
> >  			  struct tipc_media_addr *maddr,
> >  			  bool *respond, bool *dupl_addr);
> >  void tipc_node_delete_links(struct net *net, int bearer_id); @@ -92,7
> +92,7
> > @@ void tipc_node_unsubscribe(struct net *net, struct list_head *subscr,
> > u32 addr);  void tipc_node_broadcast(struct net *net, struct sk_buff *skb);
> > int tipc_node_add_conn(struct net *net, u32 dnode, u32 port, u32
> > peer_port);  void tipc_node_remove_conn(struct net *net, u32 dnode, u32
> > port); -int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel);
> > +int tipc_node_get_mtu(struct net *net, u32 addr, u32 sel, bool
> > +connected);
> >  bool tipc_node_is_up(struct net *net, u32 addr);
> >  u16 tipc_node_get_capabilities(struct net *net, u32 addr);  int
> > tipc_nl_node_dump(struct sk_buff *skb, struct netlink_callback *cb); diff --
> git
> > a/net/tipc/socket.c b/net/tipc/socket.c index 3b9f8cc328f5..fb24df03da6c
> > 100644
> > --- a/net/tipc/socket.c
> > +++ b/net/tipc/socket.c
> > @@ -854,7 +854,7 @@ static int tipc_send_group_msg(struct net *net,
> > struct tipc_sock *tsk,
> >
> >  	/* Build message as chain of buffers */
> >  	__skb_queue_head_init(&pkts);
> > -	mtu = tipc_node_get_mtu(net, dnode, tsk->portid);
> > +	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
> >  	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
> >  	if (unlikely(rc != dlen))
> >  		return rc;
> > @@ -1388,7 +1388,7 @@ static int __tipc_sendmsg(struct socket *sock,
> > struct msghdr *m, size_t dlen)
> >  		return rc;
> >
> >  	__skb_queue_head_init(&pkts);
> > -	mtu = tipc_node_get_mtu(net, dnode, tsk->portid);
> > +	mtu = tipc_node_get_mtu(net, dnode, tsk->portid, false);
> >  	rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
> >  	if (unlikely(rc != dlen))
> >  		return rc;
> > @@ -1526,7 +1526,7 @@ static void tipc_sk_finish_conn(struct tipc_sock
> > *tsk, u32 peer_port,
> >  	sk_reset_timer(sk, &sk->sk_timer, jiffies + CONN_PROBING_INTV);
> >  	tipc_set_sk_state(sk, TIPC_ESTABLISHED);
> >  	tipc_node_add_conn(net, peer_node, tsk->portid, peer_port);
> > -	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid);
> > +	tsk->max_pkt = tipc_node_get_mtu(net, peer_node, tsk->portid, true);
> >  	tsk->peer_caps = tipc_node_get_capabilities(net, peer_node);
> >  	__skb_queue_purge(&sk->sk_write_queue);
> >  	if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
> > --
> > 2.20.1
> 



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
