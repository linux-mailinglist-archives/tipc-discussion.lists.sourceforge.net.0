Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C59FA076
	for <lists+tipc-discussion@lfdr.de>; Wed, 13 Nov 2019 02:50:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iUhnQ-00036c-96; Wed, 13 Nov 2019 01:50:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1iUhnP-00036W-Dl
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 01:50:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qCi4CDY/2zohy27sMgXmjcLFGGvdT3BdDy08NBE8kLU=; b=QGIKi87ARL8Ia41/X5L/Gl2xfj
 m3WwolFjqdLn9isZ5E1ECFLtiH2kQ7xFDFAmvupDOh6EZNZk+MOiGX9RZ3bNtKnJjHAy5B45/5Noe
 r1O/Nu/nXh8Q4F8JoYklZY2eWNMkxYM0Di+fiWfNQn+0C02ncKZQ3uW/NWFn8I4CVGTI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qCi4CDY/2zohy27sMgXmjcLFGGvdT3BdDy08NBE8kLU=; b=QfznVNQ53kbpPVsEoo71cGISLn
 WEJpkCTsOznipFmmwHD5CsNwKjYa5A9w4jjLEPZoHfAWzYPYg+UDzb7fvEHJlSvlRfCgutrRY4JF8
 Y9VE11mj/+eEV1ho9TEtf8/wN4ZMyOzRbzVxzxvpC+61NXGVOW2wTLvWyYVp+eT6Pl18=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUhnM-000JlC-Ch
 for tipc-discussion@lists.sourceforge.net; Wed, 13 Nov 2019 01:50:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 5ABA14AC63;
 Wed, 13 Nov 2019 12:50:01 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1573609801; bh=vDhVOZAv9m+bEo
 aIw7tg3vteb4ReSzrIK7KGs4Us6Wc=; b=gbTgke0/56+2KfmJjxxu1l2ngFIoKK
 fVe56/33GITWtwJfG17Lv5pTb+1iD65mCGovC9uipfssnztbhn8UYLTl47frHuhb
 6OaN18HJVS0W9cnRyQpVTtuInbUCj2Ezrl0BPtQwEj8mnGLu1J6RHHYiqfZeMYqT
 TkzU4r+gTvk4c=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Kq5IwxPHEbGi; Wed, 13 Nov 2019 12:50:01 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 25C4B4AC66;
 Wed, 13 Nov 2019 12:50:00 +1100 (AEDT)
Received: from VNLAP298VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 2E6024AC63;
 Wed, 13 Nov 2019 12:50:00 +1100 (AEDT)
From: "Hoang Le" <hoang.h.le@dektech.com.au>
To: "'Jon Maloy'" <jon.maloy@ericsson.com>, <maloy@donjonn.com>,
 <tipc-discussion@lists.sourceforge.net>
References: <20191111092340.7591-1-hoang.h.le@dektech.com.au>
 <CH2PR15MB35757313CF95F91EDCBE8D7D9A740@CH2PR15MB3575.namprd15.prod.outlook.com>
 <MN2PR15MB3581790A58D3C25497ADED529A760@MN2PR15MB3581.namprd15.prod.outlook.com>
In-Reply-To: <MN2PR15MB3581790A58D3C25497ADED529A760@MN2PR15MB3581.namprd15.prod.outlook.com>
Date: Wed, 13 Nov 2019 08:49:58 +0700
Message-ID: <005401d599c4$a9123480$fb369d80$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQF/0pCbPbc48g4RyogjqWdDdaArNAHTLURqAei6OEmoFgLnsA==
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iUhnM-000JlC-Ch
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Yeah, but I think we will have the same result with both of them. Because link monitoring is still 'idle' during this period time.

Regards,
Hoang
-----Original Message-----
From: Jon Maloy <jon.maloy@ericsson.com> 
Sent: Wednesday, November 13, 2019 8:35 AM
To: Hoang Huu Le <hoang.h.le@dektech.com.au>; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
Subject: RE: [net-next] tipc: update mon's self addr when node addr generated

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
