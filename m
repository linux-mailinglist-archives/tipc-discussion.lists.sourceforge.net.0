Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBB82BA193
	for <lists+tipc-discussion@lfdr.de>; Fri, 20 Nov 2020 05:56:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kfyT8-0008E0-2J; Fri, 20 Nov 2020 04:56:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <howard@thefiners.net>) id 1kfyT5-0008DZ-7K
 for tipc-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 04:56:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=np/JjVN8UO5vV7PajXt0XdOKLod4t+o57yTEeT3zNZg=; b=L/nl/NGq1dcOYDPD83h7rARbEA
 LMSySXNEm0aNnV5VcrqhDXokW/Ed5LsokxEZfi9Z9hlCxPWCeq/lpd78mvktvTQP96uwGhLIooiw+
 8LyiD3J9fNAPZ435H0BtjYOXsAJ4W4dmtGV55mggPZqzZFtu1tH4d0fH+R42rn+6Nlp4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=np/JjVN8UO5vV7PajXt0XdOKLod4t+o57yTEeT3zNZg=; b=N
 VTWOmbviZejtugalEZvQg1fHScqAKiXY/5t/dOmFRBPcbfrLlukmt1WeMXUJZgQ9CjMTOTCbdy57x
 7g0di8pVSWcnKzKHlqI4lKYI82laCnY2ULq9Jb7NMVhNX50EzvAc5G1n8RsAqiNUSayRnO+5YO6MW
 lwJT9B3LLP4JvsOY=;
Received: from p3plsmtpa06-04.prod.phx3.secureserver.net ([173.201.192.105])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kfySf-001zZP-7H
 for tipc-discussion@lists.sourceforge.net; Fri, 20 Nov 2020 04:56:18 +0000
Received: from HowieInspiron157000 ([173.76.59.25]) by :SMTPAUTH: with ESMTPSA
 id fy9ukbeLqjBSXfy9ukcfgI; Thu, 19 Nov 2020 21:36:31 -0700
X-CMAE-Analysis: v=2.4 cv=KbYXDSUD c=1 sm=1 tr=0 ts=5fb747cf
 a=sM9wiLwscyDQ6gqnNcX9XA==:117 a=sM9wiLwscyDQ6gqnNcX9XA==:17
 a=DAwyPP_o2Byb1YXLmDAA:9 a=wdVEjfaquIw--71gmKwA:9 a=CjuIK1q_8ugA:10
 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=J7IAsuFhp6bZbUgrfs0A:9 a=gKO2Hq4RSVkA:10
 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
X-SECURESERVER-ACCT: howard@thefiners.net
From: "Howard Finer" <howard@thefiners.net>
To: <tipc-discussion@lists.sourceforge.net>
Date: Thu, 19 Nov 2020 23:36:30 -0500
Message-ID: <036301d6bef6$b7d7e520$2787af60$@thefiners.net>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: Ada+9Op0GaCU9u5iRdOQBIUnCcdqaw==
Content-Language: en-us
X-CMAE-Envelope: MS4xfINqY8rA8oCEie+L1gA3OOHYyYVtrudVTscREBVIM93G+odomOBZswa0OXfZH10OwH6Xd3Td7gCm/1ARU2zoEwcaxULxYNc+bUyA0upoCaMDALYYsG5G
 QtfOx6sg1asHIm9yI53kIBgHCVwHutaQOVeFGi1hC/X6/HmX3oO38MqOxNKii6D7PE13B3KZK8yZUibDKBBQ8RvXNE/PoxT1eHeU6EQxZUfQ9s8nbh0A8gnD
 IQ3m45omFa5QE8pAHJWqcw==
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [173.201.192.105 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.201.192.105 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kfySf-001zZP-7H
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] tipc over an active/backup bond device
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

I am trying to use TIPC (kernel version 4.19) over a bond device that is
configured for active-backup and arp monitoring for the slaves. If a slave
goes down, TIPC is receiving a netdev_change during the timeframe that the
bond device is working towards brining up the new slave.  This causes TIPC
to disable the bearer, which in turn causes a temporary loss of
communication between the nodes.

 

Instrumentation of the bond and tipc drivers shows the following:

<6> 1 2020-11-19T23:58:33.111549+01:00 LABNBS5A kernel - - - [  153.655776]
Enabled bearer <eth:bond0>, priority 10

<6> 1 2020-11-20T00:07:58.544040+01:00 LABNBS5A kernel - - - [  718.799259]
bond0: bond_ab_arp_commit: BOND_LINK_DOWN: link status definitely down for
interface eth1, disabling it

<6> 1 2020-11-20T00:07:58.544063+01:00 LABNBS5A kernel - - - [  718.799261]
bond0: bond_ab_arp_commit: do_failover, block netpoll_tx and call
select_active_slave

<6> 1 2020-11-20T00:07:58.544069+01:00 LABNBS5A kernel - - - [  718.799263]
bond0: bond_select_active_slave: bond_find_best_slave returned NULL

<6> 1 2020-11-20T00:07:58.544072+01:00 LABNBS5A kernel - - - [  718.799347]
bond0: bond_select_active_slave: now running without any active interface!

<6> 1 2020-11-20T00:07:58.544080+01:00 LABNBS5A kernel - - - [  718.799349]
bond0: bond_ab_arp_commit: do_failover, returned from select_active_slave
and unblock netpoll tx

<6> 1 2020-11-20T00:07:58.544081+01:00 LABNBS5A kernel - - - [  718.799611]
Resetting bearer <eth:bond0>

<6> 1 2020-11-20T00:07:58.655535+01:00 LABNBS5A kernel - - - [  718.907245]
bond0: bond_ab_arp_commit: BOND_LINK_UP: link status definitely up for
interface eth0

<6> 1 2020-11-20T00:07:58.655545+01:00 LABNBS5A kernel - - - [  718.907247]
bond0: bond_ab_arp_commit: do_failover, block netpoll_tx and call
select_active_slave

<6> 1 2020-11-20T00:07:58.655548+01:00 LABNBS5A kernel - - - [  718.907248]
bond0: bond_select_active_slave: bond_find_best_slave returned slave eth0

<6> 1 2020-11-20T00:07:58.655559+01:00 LABNBS5A kernel - - - [  718.907249]
bond0: making interface eth0 the new active one

<6> 1 2020-11-20T00:07:58.655562+01:00 LABNBS5A kernel - - - [  718.907560]
bond0: bond_select_active_slave: first active interface up!

 

With arp based monitoring only 1 slave will be 'up'.  When the active slave
goes down, the other slave needs to be brought up.  During that timeframe we
see TIPC is resetting the bearer.    That defeats the entire purpose of
using the bond device.

It seems that the handling of the netdev_change event for a active/backup
bond device is not correct.  It needs to leave the bearer intact so that
when the backup slave is brought up the communication is properly restored
without any upper layer applications being aware that something happened at
the lower level.

 

Thanks,

Howard


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
