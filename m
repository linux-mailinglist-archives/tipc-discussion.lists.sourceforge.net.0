Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9565FA034
	for <lists+tipc-discussion@lfdr.de>; Wed, 13 Nov 2019 02:35:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EMuUMLju2NYSYNO+I2oNnvcxJuRxA6SjxQlA2vfd6xY=; b=N+Vvix5FriSxbbHP502Si5IbB
	vnU6/+we1MDpyVab/lnVHJiTyziK0DuMsGj7JL74CdxUL2pKQgnAzzPnC64KMRpscPVc4wt6xknL+
	kbISYON62jn7FtCQgUSbCbR3+ymLHLl3txoR6pahg8yxHSo+MIRc8mBelaeI12y7BQjdk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iUhYk-0003xE-3m; Wed, 13 Nov 2019 01:35:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iUhYj-0003wi-43
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 01:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W0oMhGexZAQBrEUqngbyaBugL6y+NVJk/Y5x4Ydh/Dc=; b=fw/mB91/tjg8Sif6J9pNIIuN4P
 /I3HQEmA4rC6gvu6tGb/+QTitVtCJ7p7OMY5xrz2BGz7R4mePVACzVs4C/QL1QsrDHgM25Kv0XdIP
 /dQh4vkD5GYtok/I+6E/6gawRIIIRz8nOFadRAPbpxG8GT6XoWra7l+SFHKRk+gz3A9w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W0oMhGexZAQBrEUqngbyaBugL6y+NVJk/Y5x4Ydh/Dc=; b=PecDjyLPRLi717G9W+hnTxiExR
 7urNu8MyDXWIS3KyfMQ3f1coSaHTkX44nQxDhrwtyXkSvJd5kyZriOz5XzMMjaODobrBpuyBzfBx3
 AyT9vHkoZ4WO9bgFAjSZ8EdBbaTx0hiChOy4YgB+LLJqljU257hMtHPmD5PCb/9U7i/g=;
Received: from mail-eopbgr700077.outbound.protection.outlook.com
 ([40.107.70.77] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUhYZ-00EJ2y-C8
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 01:35:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HKl7gBLW/sNC8j9J9tFU7CdlTEQg4vFBnRlIbBe+OUSII+TfmbhItLTewtqToNdtfG4yH4UBOeFkmWbTCWnUNyeoIuBwshbddLa/oDa1SLTrhy46zGbCJawJI87gfTG1SmnilDOYMS76L4iIULeoVcOUCzc56edKMXKDrNXyxdyGA205qMdoiRRpGc7bzzl3MrSfXwTJMJpLkdu7G828Lpr42M1cwf336YfNrHpbvJKqjfG2P/TYOEAS78IvCCN6pwClJiviajkBw0dh/20LkQDCUBzEynW85kDrUHTOcU6r0Sgbv0kUnpKv5wYij6AxutkEFJHkW0qqyBnnvvgV3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W0oMhGexZAQBrEUqngbyaBugL6y+NVJk/Y5x4Ydh/Dc=;
 b=C0SYHA55P8DLv0E3i6i7rnVXZT3ozQLt5PDOqXYD8CQi1N/FU5REybqxeXtEPdFe0oahIoSp5J5nZHlwlgp9rYYS/bWpO3wFkq7pBKA7D/k6n//ZYNNGSgiXWur+i6xk5fXmpsFuwrklaxd9WA00CpsQo4R1TUZWp+yRa9VsC+ljVCZtcmLOAt1+NL94qKCZf3NxUqsye0coDDbudCixUGNiKT8CEOGJ4aWRlfKOgi2KaGz4Ov6Q5wU+GHGYRmF+8CJlMGxBD6zbKjfGyah4fFxCi2MjRru6DwnUbYv3Ud5F3NxnxNOa5eYTkwOCV39cB7ISmz1gor6OFwnekoPmPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W0oMhGexZAQBrEUqngbyaBugL6y+NVJk/Y5x4Ydh/Dc=;
 b=R6t1zjA6I4NT8O5372Z3E55QEUuvQuSRo+4r3qHR+6XMqaloaN37WtxROOF7Twgcs3OUYovh7paiLLy0p1ysmqFSDBMFd7qd6hRIvolGfMWiVMnFrb80ZYk7WKTug/yio6nAifH5C5GuMVQrBu+/jkiDg/wu2qTRxrGreRf6kgI=
Received: from MN2PR15MB3581.namprd15.prod.outlook.com (52.132.172.94) by
 MN2PR15MB3245.namprd15.prod.outlook.com (20.179.23.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 13 Nov 2019 01:34:43 +0000
Received: from MN2PR15MB3581.namprd15.prod.outlook.com
 ([fe80::7ca6:fdd1:7701:5982]) by MN2PR15MB3581.namprd15.prod.outlook.com
 ([fe80::7ca6:fdd1:7701:5982%6]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 01:34:43 +0000
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [net-next] tipc: update mon's self addr when node addr generated
Thread-Index: AQHVmHHCqh+cySAA30minwdJ4mnAv6eGApZwgAJQtPA=
Date: Wed, 13 Nov 2019 01:34:43 +0000
Message-ID: <MN2PR15MB3581790A58D3C25497ADED529A760@MN2PR15MB3581.namprd15.prod.outlook.com>
References: <20191111092340.7591-1-hoang.h.le@dektech.com.au>
 <CH2PR15MB35757313CF95F91EDCBE8D7D9A740@CH2PR15MB3575.namprd15.prod.outlook.com>
In-Reply-To: <CH2PR15MB35757313CF95F91EDCBE8D7D9A740@CH2PR15MB3575.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7aeeedc3-30a1-4bd7-c2f0-08d767d9a915
x-ms-traffictypediagnostic: MN2PR15MB3245:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <MN2PR15MB32455281CBAC6ACEC1F4CD009A760@MN2PR15MB3245.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(366004)(39860400002)(189003)(199004)(13464003)(86362001)(66066001)(2906002)(26005)(478600001)(186003)(316002)(6506007)(53546011)(71190400001)(71200400001)(52536014)(7696005)(102836004)(2201001)(8936002)(5660300002)(74316002)(2501003)(81166006)(15650500001)(14454004)(6246003)(11346002)(55016002)(81156014)(6436002)(9686003)(99286004)(7736002)(33656002)(66556008)(66946007)(110136005)(66476007)(486006)(66446008)(256004)(25786009)(14444005)(76116006)(3846002)(6116002)(229853002)(44832011)(446003)(64756008)(476003)(305945005)(8676002)(76176011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR15MB3245;
 H:MN2PR15MB3581.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iyZPWN4RKKRHN7CFD0xcqMzMV+LZDMq9oRXhSslupSTrV/7yXf7CjE8tt0TlxGNC1/cE08SeooG6PDlFA5VBCuzWj/9MiTE2TLfJUcvPTuxRrxr5ctFvV60taNBPZFOyYhWEo8TrV46xrffkCgqLR2QZ7aXIm/FocYXJfdCl3MG9H9gIqLQ8VR0vBtX0CyNodwrXPWu6Pu2ft3q0havwJvi2tudtXIkU0Tff59P4cKRxDFDhz26uxpAABHd8cNtF8jWHZh3HHaXCm+Qg4t1AQ/iUSKz1PIGzq6SdO5IHSVTgrlmNAoN7CSErbipIO0iug6ob8QEIx1ISy0I/F4PRRtX4oh1g4+YbNtporSbLbucYyrKMv1BoZaW88MWIzr4gGUCrZxYSwZS0JlJtiu+spgiDUM7D+IJ9/20mYryhhqp0cEXHCArry50F1KN8xbeW
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aeeedc3-30a1-4bd7-c2f0-08d767d9a915
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 01:34:43.7824 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dA66u1uC7stV0h07OGTyKYvoZxr1CbOvEFyhUVuI4BfL7AtyfWLr7YF1cGjVZkUj1fozMKdS7PKoGvIO2CmW8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR15MB3245
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.70.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iUhYZ-00EJ2y-C8
Subject: Re: [tipc-discussion] [net-next] tipc: update mon's self addr when
 node addr generated
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

Thinking about it, wouldn't it be better to add the node to the monitor at the moment it really has an address, and not earlier?
To add it to the monitor with address 0 is pretty meaningless.

///jon

> -----Original Message-----
> From: Jon Maloy
> Sent: 11-Nov-19 09:10
> To: Hoang Le <hoang.h.le@dektech.com.au>; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
> Subject: RE: [net-next] tipc: update mon's self addr when node addr generated
> 
> Acked.
> 
> ///jon
> 
> > -----Original Message-----
> > From: Hoang Le <hoang.h.le@dektech.com.au>
> > Sent: 11-Nov-19 04:24
> > To: Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
> > Subject: [net-next] tipc: update mon's self addr when node addr generated
> >
> > In commit 25b0b9c4e835 ("tipc: handle collisions of 32-bit node address
> > hash values"), the 32-bit node address only generated after one second
> > trial period expired. However the self's addr in struct tipc_monitor do
> > not update according to node address generated. This lead to it is
> > always zero as initial value. As result, sorting algorithm using this
> > value does not work as expected, neither neighbor monitoring framework.
> >
> > In this commit, we add a fix to update self's addr when 32-bit node
> > address generated.
> >
> > Fixes: 25b0b9c4e835 ("tipc: handle collisions of 32-bit node address hash values")
> > Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> > ---
> >  net/tipc/monitor.c | 15 +++++++++++++++
> >  net/tipc/monitor.h |  1 +
> >  net/tipc/net.c     |  2 ++
> >  3 files changed, 18 insertions(+)
> >
> > diff --git a/net/tipc/monitor.c b/net/tipc/monitor.c
> > index 6a6eae88442f..58708b4c7719 100644
> > --- a/net/tipc/monitor.c
> > +++ b/net/tipc/monitor.c
> > @@ -665,6 +665,21 @@ void tipc_mon_delete(struct net *net, int bearer_id)
> >  	kfree(mon);
> >  }
> >
> > +void tipc_mon_reinit_self(struct net *net)
> > +{
> > +	struct tipc_monitor *mon;
> > +	int bearer_id;
> > +
> > +	for (bearer_id = 0; bearer_id < MAX_BEARERS; bearer_id++) {
> > +		mon = tipc_monitor(net, bearer_id);
> > +		if (!mon)
> > +			continue;
> > +		write_lock_bh(&mon->lock);
> > +		mon->self->addr = tipc_own_addr(net);
> > +		write_unlock_bh(&mon->lock);
> > +	}
> > +}
> > +
> >  int tipc_nl_monitor_set_threshold(struct net *net, u32 cluster_size)
> >  {
> >  	struct tipc_net *tn = tipc_net(net);
> > diff --git a/net/tipc/monitor.h b/net/tipc/monitor.h
> > index 2a21b93e0d04..ed63d2e650b0 100644
> > --- a/net/tipc/monitor.h
> > +++ b/net/tipc/monitor.h
> > @@ -77,6 +77,7 @@ int __tipc_nl_add_monitor(struct net *net, struct tipc_nl_msg *msg,
> >  			  u32 bearer_id);
> >  int tipc_nl_add_monitor_peer(struct net *net, struct tipc_nl_msg *msg,
> >  			     u32 bearer_id, u32 *prev_node);
> > +void tipc_mon_reinit_self(struct net *net);
> >
> >  extern const int tipc_max_domain_size;
> >  #endif
> > diff --git a/net/tipc/net.c b/net/tipc/net.c
> > index 85707c185360..2de3cec9929d 100644
> > --- a/net/tipc/net.c
> > +++ b/net/tipc/net.c
> > @@ -42,6 +42,7 @@
> >  #include "node.h"
> >  #include "bcast.h"
> >  #include "netlink.h"
> > +#include "monitor.h"
> >
> >  /*
> >   * The TIPC locking policy is designed to ensure a very fine locking
> > @@ -136,6 +137,7 @@ static void tipc_net_finalize(struct net *net, u32 addr)
> >  	tipc_set_node_addr(net, addr);
> >  	tipc_named_reinit(net);
> >  	tipc_sk_reinit(net);
> > +	tipc_mon_reinit_self(net);
> >  	tipc_nametbl_publish(net, TIPC_CFG_SRV, addr, addr,
> >  			     TIPC_CLUSTER_SCOPE, 0, addr);
> >  }
> > --
> > 2.20.1


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
