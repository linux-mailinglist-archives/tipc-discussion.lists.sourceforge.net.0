Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E0D224CE1
	for <lists+tipc-discussion@lfdr.de>; Sat, 18 Jul 2020 18:14:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jwpTR-0006rQ-3g; Sat, 18 Jul 2020 16:14:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jwpTP-0006rJ-Or
 for tipc-discussion@lists.sourceforge.net; Sat, 18 Jul 2020 16:14:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:To:References:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NXlyojRzl9OdhBq1a8LFcfEg0ZHATZ0Cw/NX88NnJC0=; b=VsRyXQkF+THttWlayvbkRPZv+
 B910Oz7Le89E1vxsq93ckMYdf4Kf9Skrx7/smZEJ7Zl+aH88FKkdFffbAUzqfTxRLEpAfhkLrClrr
 0A/qFFOvz20iaGu9Tx/D1nccxyeyGoaI2pvH4HjShzfCfsV+oAG/APuCO6KkJM0yoz9GI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:To:References:
 Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NXlyojRzl9OdhBq1a8LFcfEg0ZHATZ0Cw/NX88NnJC0=; b=fvV0p+CoiEYS00VDx5InuhNpui
 nWF+1akQVkzJFCfQHCVRnxBVoC3LkysXUaT4qRGHAZkDt3Lbj5popa+KC8fts8LthsOdj96A27G8E
 X9wiSdlGUosyIOm5PxyygbJMNPoBhwPav0vor2iL93IKp2eg1zOSLDar6LwG5b3BBvAo=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jwpTK-005ml4-EQ
 for tipc-discussion@lists.sourceforge.net; Sat, 18 Jul 2020 16:14:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595088831;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NXlyojRzl9OdhBq1a8LFcfEg0ZHATZ0Cw/NX88NnJC0=;
 b=fewrOOe/ZmbgJhypLpbkOLiCPMVRd2VeBOnXSE6vwO5ojac5jie2gJFRUNbg5vrMf4zuzg
 EXbPDded+6o9uQWTm0jo3NaVRrxNaJVO3/oO7S2x/dVXT0YygBmE3pmPCXL3ZPu7nDu5hE
 uxOYNL4FOXjV/B/kp7bWW7WcyDLNbVg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-374-dBgtMICgPhCWkQ_XputXdA-1; Sat, 18 Jul 2020 12:13:48 -0400
X-MC-Unique: dBgtMICgPhCWkQ_XputXdA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B86B18C63C1;
 Sat, 18 Jul 2020 16:13:47 +0000 (UTC)
Received: from [10.10.120.78] (ovpn-120-78.rdu2.redhat.com [10.10.120.78])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E38FD2E037;
 Sat, 18 Jul 2020 16:13:46 +0000 (UTC)
References: <66ccf0c1-0fc6-3a34-f4ea-e8ffe224ef7c@redhat.com>
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
X-Forwarded-Message-Id: <66ccf0c1-0fc6-3a34-f4ea-e8ffe224ef7c@redhat.com>
Message-ID: <386ed3bd-86ce-c424-fdfe-92a307c5f214@redhat.com>
Date: Sat, 18 Jul 2020 12:13:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <66ccf0c1-0fc6-3a34-f4ea-e8ffe224ef7c@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jwpTK-005ml4-EQ
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Fwd: Re: TIPC/RAFT?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Adding tipc-discussion and tipc-dek to the thread.


-------- Forwarded Message --------
Subject: 	Re: TIPC/RAFT?
Date: 	Sat, 18 Jul 2020 12:07:18 -0400
From: 	Jon Maloy <jmaloy@redhat.com>
To: 	Xue, Ying <Ying.Xue@windriver.com>



Hi Ying,
I may be ranting now...
I know that blockchain technologies (Bitcoin, Ethereum etc.) also can be 
used to implement consensus algorithms. Furthermore, those are 
completely decentralized and very scalable, something that fits much 
better into the TIPC philosophy than the leader electing algorithms of 
Paxos and Raft.
It might be worth learning more about this before embarking on any major 
effort to re-implement Raft.
I don't know much about blockchains yet, so I have no clue if this is at 
all feasible regarding code volumes, consensus times and other 
properties, but it should at least be considered before any other track 
is selected.
I will try to read up on this on my side.

Regards
///jon


On 7/15/20 11:10 AM, Xue, Ying wrote:
> Hi Jon,
>
> Raft protocol is much more complex than my initial image. The 
> complexity mainly comes from: 1.Raft protocol itself is quite complex, 
> so it's not very easy to totally understand it in a very detailed way; 
> 2. Implementing a raft consensus algorithm might not be very 
> difficult, but making sure its implementation's quality reaches an 
> industrial criteria level is very difficult. However, for a consensus 
> protocol, it must ensure it can work very well in any kinds of 
> different conditions, otherwise, some distributed values become 
> inconsistent.
>
> When it comes to this implementation 
> (https://github.com/willemt/raft), I took a lot time to study, 
> validate and understand its code so far. Although I have make all test 
> cases contained in this implementation passed, the scenarios covered 
> by these test cases are quite basic particularly compared to test 
> cases included in etcd 
> (https://github.com/etcd-io/etcd/tree/master/raft). Even in its code, 
> it clearly comments some corner cases haven't handled yet.
>
> In my previous plan, I wanted to take shortcuts so that I can quickly 
> port the implementation into Linux kernel, but it was found it's very 
> difficult to properly adapt it into kernel space if I couldn't totally 
> understand Raft protocol itself, which wasted my lots of time.
>
> Currently I have to study the following two papers:
> https://raft.github.io/raft.pdf
> https://github.com/ongardie/dissertation/blob/master/stanford.pdf
>
> While reading and understanding the papers, I am researching the code 
> and test cases of "etcd", which can help to have a much deeper 
> understanding of the protocol itself. Honestly, I still don't have a 
> very well understanding for the protocol. When I read paper, I felt I 
> had a very good understanding for some parts of the protocol, but when 
> I came back to research its implementations, I lost again and again.
>
> With my understanding of the protocol becoming deeper and deeper, more 
> and more concerns with the quality of https://github.com/willemt/raft, 
> appear in my mind. In sum, I need more time to evaluate its quality 
> and then consider whether we can use it as a base to implement raft 
> protocol in TIPC stack or if it's possible for us to well implement 
> the protocol in kernel space within a not very long time.
>
> Although I have to admit studying and even implementing the protocol 
> is a pretty challenging thing, I am still quite interested in 
> continuing working on this topic.
>
> Thanks,
> Ying
>
> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Saturday, July 11, 2020 2:29 AM
> To: Xue, Ying <Ying.Xue@windriver.com>
> Subject: TIPC/RAFT?
>
> Hi Ying,
> Since I haven't had any news from you for a while, I was just getting 
> curious.
> Did you have any time to look into the RAFT implementation references 
> I sent you?
> Do you have any thougths about this?
>
> BR
> ///jon
>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
