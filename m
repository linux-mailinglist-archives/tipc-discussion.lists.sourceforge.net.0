Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F14F22813A
	for <lists+tipc-discussion@lfdr.de>; Tue, 21 Jul 2020 15:44:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jxsZK-0007KK-2I; Tue, 21 Jul 2020 13:44:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jxsZJ-0007KC-Db
 for tipc-discussion@lists.sourceforge.net; Tue, 21 Jul 2020 13:44:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J8mQPOfAZ4h+eT7EVt5eznSkm8rZfVuRuIrOYKx5esA=; b=emduJghz+YXqWWaWLfWrPIBPft
 2A2B45ij7p8xaM4VqF0QFA9qhV0+ZcBL/gfJBdNClsu/mhMvg0bWtDVdgA0NtSqMU2kbU+WfAIvSM
 k8Qgp6mKiF0yFZB7Sw87Q0q71LcNc90wKjm8RahEr5i1V+idmSAh5nsXrpFKM8EZUGzI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J8mQPOfAZ4h+eT7EVt5eznSkm8rZfVuRuIrOYKx5esA=; b=X4Sk2blOw0w+kJwxrdAw+jKXVV
 +FwFL5GrIpFHPMTDsU5Jg4mDtK6YZ053SNGSZG2r8LgS2ZUOlA+pZDNV0ULHGNe8iC4K/g95S92S8
 34k0mwnaYk8CtpkBZpk3/n+AimQn9wkUQgm9U0ltRLksAEVNCleEmoZGVzc/HYxykE08=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jxsZF-00F92F-Uc
 for tipc-discussion@lists.sourceforge.net; Tue, 21 Jul 2020 13:44:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595339052;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J8mQPOfAZ4h+eT7EVt5eznSkm8rZfVuRuIrOYKx5esA=;
 b=VZORN8d8uRRy/VSMSXLML3/2WNN4/d+poey9Z+nwHQWrm8R1TrRwwZ3X3e4I1zraQjyFZY
 haJk6H7VL5BYDk4QLQJqd/UlpjBpBouXnmqis4ubcd7Ce0ewU2rwR9F/WKNEgM9U3x9lmC
 08DhZLovDVi1r95bWTS3ac6twIN8uNs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-450-kvO8OOIhMTukUR7Wvst08g-1; Tue, 21 Jul 2020 09:44:06 -0400
X-MC-Unique: kvO8OOIhMTukUR7Wvst08g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7860F890EA9;
 Tue, 21 Jul 2020 13:44:03 +0000 (UTC)
Received: from [10.10.112.227] (ovpn-112-227.rdu2.redhat.com [10.10.112.227])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 94419756E0;
 Tue, 21 Jul 2020 13:44:02 +0000 (UTC)
To: "Xue, Ying" <Ying.Xue@windriver.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>,
 Xin Long <lxin@redhat.com>, Xin Long <lucien.xin@gmail.com>
References: <1ca72e4b-a467-a422-47cd-33252ad3b8e8@redhat.com>
 <DM6PR11MB260326473798668B5B23653B847E0@DM6PR11MB2603.namprd11.prod.outlook.com>
 <66ccf0c1-0fc6-3a34-f4ea-e8ffe224ef7c@redhat.com>
 <DM6PR11MB260391433A361451FAF0D49C84780@DM6PR11MB2603.namprd11.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <4ffeddcc-6f60-257d-398e-9c2f5621f2f8@redhat.com>
Date: Tue, 21 Jul 2020 09:44:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB260391433A361451FAF0D49C84780@DM6PR11MB2603.namprd11.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wikipedia.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxsZF-00F92F-Uc
Subject: Re: [tipc-discussion] TIPC/RAFT?
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

(adding tipc-dek and tipc-discussion to thread)


On 7/21/20 6:04 AM, Xue, Ying wrote:
> Hi Jon,
>
> Exactly, when I learned Raft, I was always thinking how Raft and TIPC existing link/service discovery protocol can smoothly work together. Raft is a centralization consensus protocol. As you reminded below, it did match our TIPC philosophy indeed because TIPC is more close to a decentralization consensus protocol.
>
> After search, I found the famous decentralization consensus protocols include:
> https://en.wikipedia.org/wiki/Gossip_protocol
I studied the Gossip protocol before I implemented my neighbor 
monitoring ("Overlapping Ring Monitoring") algorithm. The fact is, that 
algorithm could just as well have been called a "A Biased Gossip Type 
Neighbor Monitor Algorithm", because that is what it is. In my view, 
regular Gossip is not suitable for TIPC because convergence times in 
large clusters typically become too long, and if anything changes during 
the convergence period, it will always struggle to catch up.
Also, consensus in the RAFT/PAXOS meaning is that changes in the cluster 
state must be reported with exactly the same events in exactly the same 
order on all nodes. I don't think Gossip can guarantee that any more 
than current TIPC can.
> https://en.wikipedia.org/wiki/Proof_of_work
This one seems to be used by Bitcoin. Looks interesting.
There are also a few others worth studying:
https://www.geeksforgeeks.org/consensus-algorithms-in-blockchain/


///jon

>
> It really worth learning them and I will try to research and understand which is more suitable for our case.
>
> By the way, I have to go home to take care of my kid and I could attend our today's meeting. If I have some new finding or understanding, I will keep updating.
>
> Thanks,
> Ying
>
> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Sunday, July 19, 2020 12:07 AM
> To: Xue, Ying <Ying.Xue@windriver.com>
> Subject: Re: TIPC/RAFT?
>
> Hi Ying,
> I may be ranting now...
> I know that blockchain technologies (Bitcoin, Ethereum etc.) also can be used to implement consensus algorithms. Furthermore, those are completely decentralized and very scalable, something that fits much better into the TIPC philosophy than the leader electing algorithms of Paxos and Raft.
> It might be worth learning more about this before embarking on any major effort to re-implement Raft.
> I don't know much about blockchains yet, so I have no clue if this is at all feasible regarding code volumes, consensus times and other properties, but it should at least be considered before any other track is selected.
> I will try to read up on this on my side.
>
> Regards
> ///jon
>
>
> On 7/15/20 11:10 AM, Xue, Ying wrote:
>> Hi Jon,
>>
>> Raft protocol is much more complex than my initial image. The complexity mainly comes from: 1.Raft protocol itself is quite complex, so it's not very easy to totally understand it in a very detailed way; 2. Implementing a raft consensus algorithm might not be very difficult, but making sure its implementation's quality reaches an industrial criteria level is very difficult. However, for a consensus protocol, it must ensure it can work very well in any kinds of different conditions, otherwise, some distributed values become inconsistent.
>>
>> When it comes to this implementation (https://github.com/willemt/raft), I took a lot time to study, validate and understand its code so far. Although I have make all test cases contained in this implementation passed, the scenarios covered by these test cases are quite basic particularly compared to test cases included in etcd (https://github.com/etcd-io/etcd/tree/master/raft). Even in its code, it clearly comments some corner cases haven't handled yet.
>>
>> In my previous plan, I wanted to take shortcuts so that I can quickly port the implementation into Linux kernel, but it was found it's very difficult to properly adapt it into kernel space if I couldn't totally understand Raft protocol itself, which wasted my lots of time.
>>
>> Currently I have to study the following two papers:
>> https://raft.github.io/raft.pdf
>> https://github.com/ongardie/dissertation/blob/master/stanford.pdf
>>
>> While reading and understanding the papers, I am researching the code and test cases of "etcd", which can help to have a much deeper understanding of the protocol itself. Honestly, I still don't have a very well understanding for the protocol. When I read paper, I felt I had a very good understanding for some parts of the protocol, but when I came back to research its implementations, I lost again and again.
>>
>> With my understanding of the protocol becoming deeper and deeper, more and more concerns with the quality of https://github.com/willemt/raft, appear in my mind. In sum, I need more time to evaluate its quality and then consider whether we can use it as a  base to implement raft protocol in TIPC stack or if it's possible for us to well implement the protocol in kernel space within a not very long time.
>>
>> Although I have to admit studying and even implementing the protocol is a pretty challenging thing, I am still quite interested in continuing working on this topic.
>>
>> Thanks,
>> Ying
>>
>> -----Original Message-----
>> From: Jon Maloy <jmaloy@redhat.com>
>> Sent: Saturday, July 11, 2020 2:29 AM
>> To: Xue, Ying <Ying.Xue@windriver.com>
>> Subject: TIPC/RAFT?
>>
>> Hi Ying,
>> Since I haven't had any news from you for a while, I was just getting curious.
>> Did you have any time to look into the RAFT implementation references I sent you?
>> Do you have any thougths about this?
>>
>> BR
>> ///jon
>>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
