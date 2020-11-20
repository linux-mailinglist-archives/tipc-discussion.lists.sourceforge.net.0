Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F642BB3E6
	for <lists+tipc-discussion@lfdr.de>; Fri, 20 Nov 2020 19:39:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kgBJe-0004rw-Bw; Fri, 20 Nov 2020 18:39:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <howard@thefiners.net>) id 1kgBJc-0004ro-Ih
 for tipc-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 18:39:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pSMrEAyDEJQHlbKXMdnVOJ6MTISTLsFIqabYt7UTE/w=; b=RwkfUksMyEzrEd7caMdxlCNRyu
 HBXLGYkol7XPG2gn/ik7QuH4WaR84SLt748amngIKwaF1CIRSojLcyMz83PCUKnE70jYHZ4qqkMf6
 zbL+l0W3WNnNMuy6LQSHlS6W6MMJzMCzq1eypgWGWps9wFBOaD3CPTDlfmtRsJ+mDhnM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pSMrEAyDEJQHlbKXMdnVOJ6MTISTLsFIqabYt7UTE/w=; b=Xt8JtI4VfrR1bNtjrvoY7/lnr3
 D5mx1pHQxN9qGsoH3/U4UOVmdJ+n4Ts9D+NYU5dmQCW+FgLGgxQayCAEGJpppY5dgPMcdImhtneeG
 HkfvajHkRulgdHjm1PlcYildQ38nJlhGkPdDnqVIcLJStz+S9W00+P9tQKZAWO3LGrYY=;
Received: from p3plsmtpa06-03.prod.phx3.secureserver.net ([173.201.192.104])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kgBJR-00B5Dg-UK
 for tipc-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 18:39:24 +0000
Received: from HowieInspiron157000 ([173.76.59.25]) by :SMTPAUTH: with ESMTPSA
 id gBJEk7Ok15Lb5gBJFk2HzT; Fri, 20 Nov 2020 11:39:01 -0700
X-CMAE-Analysis: v=2.4 cv=LcD5VhTi c=1 sm=1 tr=0 ts=5fb80d45
 a=sM9wiLwscyDQ6gqnNcX9XA==:117 a=sM9wiLwscyDQ6gqnNcX9XA==:17
 a=IkcTkHD0fZMA:10 a=20KFwNOVAAAA:8 a=9d28K2DEAAAA:8 a=FP58Ms26AAAA:8
 a=8SK7jRMkuXNbeqXK3HcA:9 a=QEXdDO2ut3YA:10 a=1EUg3d_pyfCNkp6X46HA:22
X-SECURESERVER-ACCT: howard@thefiners.net
From: "Howard Finer" <howard@thefiners.net>
To: "'Jon Maloy'" <jmaloy@redhat.com>, <tipc-discussion@lists.sourceforge.net>
References: <036301d6bef6$b7d7e520$2787af60$@thefiners.net>
 <d8bcb856-fffb-ead8-1424-01e4068e2234@redhat.com>
In-Reply-To: <d8bcb856-fffb-ead8-1424-01e4068e2234@redhat.com>
Date: Fri, 20 Nov 2020 13:38:59 -0500
Message-ID: <003b01d6bf6c$69d1d220$3d757660$@thefiners.net>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQIKWT8Cdz4dQVQ+HD0sQxiNV4rF6QLzZwvWqVKIfGA=
X-CMAE-Envelope: MS4xfA9eRIbpMkIfKLVv4LcrL3m8UpiFJaH4UV+h1kLv8ifCYHZ0g6ARGOPS57PZxTNS+n/twi9oKF1IBgvOmp5a08k2ja8gm6pQglFV3DAc8gG5+W6uBj2R
 wgy8wwas8afscVZXGVje8b+3Mg+BqQ2lw8Ip1VQlcc0tjwnHN8Gm5OBIa7JYYeQ74LpnHckgefCaL4+erysWjiW2OwTGhvRtPtPfaD5K2Y219vr4LavrD3Np
 0LDR2We5lvIX2HAUk4Akdg==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [173.201.192.104 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: thefiners.net]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.201.192.104 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kgBJR-00B5Dg-UK
Subject: Re: [tipc-discussion] tipc over an active/backup bond device
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

Hi Jon,

Thanks for the response.  I was continuing to debug the situation today and I agree that the issue is with the bond device.    When using active/backup and AP monitoring, it is issuing a NETDEV_CHANGE event that arguably it should not be doing.  I am already in the process of filing a bug against the bond driver.
Essentially what happens is that the bond driver sees the slave down and stops using it. It doesn't immediately switch to the backup though because it is technically 'down'. However, it does send a NETDEV_CHANGE here.  it then immediately brings up the backup slave and sends another NETDEV_CHANGE. By then however the bearer has been reset.  The concept of the bond driver means it should switch the slave without notifying the upper layers anything happened.  But that is not the case here, and hence the bond device error.  If MII monitoring is used instead of ARP, it switches the slave immediately and TIPC is unaware.  However MII monitoring does not make much sense when going across a network involving switches, etc.

Dual TIPC links is an interesting suggestion.  However the functionality where I see this issue is on a product that is 10+ years old, and we use the bond device for redundancy.  It is not a throughput/performance issue.  

Thanks again for the quick response.

Howard

-----Original Message-----
From: Jon Maloy <jmaloy@redhat.com> 
Sent: Friday, November 20, 2020 12:25 PM
To: Howard Finer <howard@thefiners.net>; tipc-discussion@lists.sourceforge.net
Subject: Re: [tipc-discussion] tipc over an active/backup bond device

Hi Howard,
This is the code executed when TIPC receives a NETDEV_CHANGE event:

switch (evt) {
|       case NETDEV_CHANGE:
|       |       if (netif_carrier_ok(dev) && netif_oper_up(dev)) {
|       |       |       test_and_set_bit_lock(0, &b->up);
|       |       |       break;
|       |       }
|       |       fallthrough;
|       case NETDEV_GOING_DOWN:
|       |       clear_bit_unlock(0, &b->up);
|       |       tipc_reset_bearer(net, b);
|       |       break;
|       case NETDEV_UP:
|       |       test_and_set_bit_lock(0, &b->up);
|       |       break;
|       case NETDEV_CHANGEMTU:

So, unless the bond interface really reports that it is going down TIPC 
doesn't reset any links. And if it *does* report that it is going down, 
what else can we do?
To me this looks more like a problem with the bond device rather than 
with TIPC, but we might of course have misunderstood its expected behavior.
We will look into this.
On a different note, you could instead omit the bond interface and try 
using dual TIPC links, which work in active-active mode and give better 
performance.
Is that an option for you?

BR
Jon Maloy


On 11/19/20 11:36 PM, Howard Finer wrote:
> I am trying to use TIPC (kernel version 4.19) over a bond device that is
> configured for active-backup and arp monitoring for the slaves. If a slave
> goes down, TIPC is receiving a netdev_change during the timeframe that the
> bond device is working towards brining up the new slave.  This causes TIPC
> to disable the bearer, which in turn causes a temporary loss of
> communication between the nodes.
>
>   
>
> Instrumentation of the bond and tipc drivers shows the following:
>
> <6> 1 2020-11-19T23:58:33.111549+01:00 LABNBS5A kernel - - - [  153.655776]
> Enabled bearer <eth:bond0>, priority 10
>
> <6> 1 2020-11-20T00:07:58.544040+01:00 LABNBS5A kernel - - - [  718.799259]
> bond0: bond_ab_arp_commit: BOND_LINK_DOWN: link status definitely down for
> interface eth1, disabling it
>
> <6> 1 2020-11-20T00:07:58.544063+01:00 LABNBS5A kernel - - - [  718.799261]
> bond0: bond_ab_arp_commit: do_failover, block netpoll_tx and call
> select_active_slave
>
> <6> 1 2020-11-20T00:07:58.544069+01:00 LABNBS5A kernel - - - [  718.799263]
> bond0: bond_select_active_slave: bond_find_best_slave returned NULL
>
> <6> 1 2020-11-20T00:07:58.544072+01:00 LABNBS5A kernel - - - [  718.799347]
> bond0: bond_select_active_slave: now running without any active interface!
>
> <6> 1 2020-11-20T00:07:58.544080+01:00 LABNBS5A kernel - - - [  718.799349]
> bond0: bond_ab_arp_commit: do_failover, returned from select_active_slave
> and unblock netpoll tx
>
> <6> 1 2020-11-20T00:07:58.544081+01:00 LABNBS5A kernel - - - [  718.799611]
> Resetting bearer <eth:bond0>
>
> <6> 1 2020-11-20T00:07:58.655535+01:00 LABNBS5A kernel - - - [  718.907245]
> bond0: bond_ab_arp_commit: BOND_LINK_UP: link status definitely up for
> interface eth0
>
> <6> 1 2020-11-20T00:07:58.655545+01:00 LABNBS5A kernel - - - [  718.907247]
> bond0: bond_ab_arp_commit: do_failover, block netpoll_tx and call
> select_active_slave
>
> <6> 1 2020-11-20T00:07:58.655548+01:00 LABNBS5A kernel - - - [  718.907248]
> bond0: bond_select_active_slave: bond_find_best_slave returned slave eth0
>
> <6> 1 2020-11-20T00:07:58.655559+01:00 LABNBS5A kernel - - - [  718.907249]
> bond0: making interface eth0 the new active one
>
> <6> 1 2020-11-20T00:07:58.655562+01:00 LABNBS5A kernel - - - [  718.907560]
> bond0: bond_select_active_slave: first active interface up!
>
>   
>
> With arp based monitoring only 1 slave will be 'up'.  When the active slave
> goes down, the other slave needs to be brought up.  During that timeframe we
> see TIPC is resetting the bearer.    That defeats the entire purpose of
> using the bond device.
>
> It seems that the handling of the netdev_change event for a active/backup
> bond device is not correct.  It needs to leave the bearer intact so that
> when the backup slave is brought up the communication is properly restored
> without any upper layer applications being aware that something happened at
> the lower level.
>
>   
>
> Thanks,
>
> Howard
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
