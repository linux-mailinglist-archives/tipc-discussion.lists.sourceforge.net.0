Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88943326E3A
	for <lists+tipc-discussion@lfdr.de>; Sat, 27 Feb 2021 18:12:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lG38X-00029F-7I; Sat, 27 Feb 2021 17:12:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lG38W-000296-Iq
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 17:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fIvgZ6yDhYoBrMbFf89avo2hgJX6S55/0fd4ZOi7sqY=; b=Y4mFPGRZfD3+lDuK2FlerzDeDc
 LTVilaa13d+jjucmBYm/jKv1iWS1ZvPtFoWlhPwRac+IbVVLAbxY8Azrp1vcBZ0jZRURevR72eyn1
 m6p3CqBvTeMpBy0epzQ6pbKLOMvYsUgRIM+yvneMvhUKcPfHjbDV9raxIzQrrvtyo8ww=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fIvgZ6yDhYoBrMbFf89avo2hgJX6S55/0fd4ZOi7sqY=; b=m3NqHpOmoiLoz0Ba0uu3BPyD8Q
 hpqT1sBciiCZWsS6XnN94bExomu0rDNa8UNoWIVtAGF4Z4HREM42+fbVCNIO+ZeNUlyjycLC78tvn
 jLjwPJxad9kNJxk7VKQIjJVsSDGO+3p+9+Ov53FxF8Yrq1GTCorWnLvgYawzknVbiUgY=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lG38S-007izM-AM
 for tipc-discussion@lists.sourceforge.net; Sat, 27 Feb 2021 17:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614445922;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fIvgZ6yDhYoBrMbFf89avo2hgJX6S55/0fd4ZOi7sqY=;
 b=a/JcfEKTlA6/qHG/FiOUEVa6R7Bx0ut42KWZyX8k9MSMRGyMtsaECLcCnhP4Z2khJ+aQb/
 qRQv/VLGk6RrC/WVOzcZaz3+Hx2lAUiautf0dXw2jiVB3gddqOa8m7JW6fBKzuzS+MgYt9
 hJcWTBfU/10XBMkKkLIBiDApUhqgy7k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-88-wIH6EZlLPgecmGqvu4JVog-1; Sat, 27 Feb 2021 12:10:29 -0500
X-MC-Unique: wIH6EZlLPgecmGqvu4JVog-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E793E1868405;
 Sat, 27 Feb 2021 17:10:28 +0000 (UTC)
Received: from [10.10.114.105] (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 862B45D9C0;
 Sat, 27 Feb 2021 17:10:28 +0000 (UTC)
To: Xin Long <lucien.xin@gmail.com>
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <CADvbK_ctA-P=_m4Kp7oVQnHpuLcRgdAiA1nZxu_SkgwSmDFZ8A@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <6c4a18fb-32af-ca64-ed75-12d3f18b55ce@redhat.com>
Date: Sat, 27 Feb 2021 12:10:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CADvbK_ctA-P=_m4Kp7oVQnHpuLcRgdAiA1nZxu_SkgwSmDFZ8A@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lG38S-007izM-AM
Subject: Re: [tipc-discussion] [net-next 00/16] tipc: cleanups and
 simplifications
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 2/24/21 8:55 AM, Xin Long wrote:
> Hi Jon,
>
> Sorry for so late to check this patchset, I just came back from
> Chinese New Year holidays.
>
> Overall I like the idea to use one or two new structures to make the
> parameters passing between functions more clear and readable.
> Meanwhile I think if the parameters of some function are already
> simple, we may just need to pass what the function only wants. After
> all, ua->xxx will need CPU to access memory obj instead of read
> registers only,  and we will have to build a ua object before calling
> the function.
I see your point. The plan is that struct tipc_uaddr later will contain 
two very different address types, and we want to hide that as much as 
possible in the parts of the code where this is not relevant. We can see 
later, when all is done, if there are optimizations that can be done.

///jon

>
> I just commented on some of the patches.
>
> Thanks.
>
> On Wed, Dec 9, 2020 at 2:51 AM <jmaloy@redhat.com> wrote:
>> From: Jon Maloy <jmaloy@redhat.com>
>>
>> We make a number of simplifications and cleanups, especially to call signatures
>> in the binding table. This makes the code easier to understand and serves as a
>> preparation for an upcoming functional addition.
>>
>> Jon Maloy (16):
>>    tipc: re-organize members of struct publication
>>    tipc: move creation of publication item one level up in call chain
>>    tipc: introduce new unified address type for internal use
>>    tipc: simplify signature of tipc_namtbl_publish()
>>    tipc: simplify call signatures for publication creation
>>    tipc: simplify signature of tipc_nametbl_withdraw() functions
>>    tipc: rename binding table lookup functions
>>    tipc: refactor tipc_sendmsg() and tipc_lookup_anycast()
>>    tipc: simplify signature of tipc_namtbl_lookup_mcast_sockets()
>>    tipc: simplify signature of tipc_nametbl_lookup_mcast_nodes()
>>    tipc: simplify signature of tipc_nametbl_lookup_group()
>>    tipc: simplify signature of tipc_service_find_range()
>>    tipc: simplify signature of tipc_find_service()
>>    tipc: simplify api between binding table and topology server
>>    tipc: add host-endian copy of user subscription to struct
>>      tipc_subscription
>>    tipc: remove some unnecessary warnings
>>
>>   net/tipc/addr.h       |  44 +++++
>>   net/tipc/msg.c        |  23 ++-
>>   net/tipc/name_distr.c |  89 +++++----
>>   net/tipc/name_table.c | 419 ++++++++++++++++++++++--------------------
>>   net/tipc/name_table.h |  64 ++++---
>>   net/tipc/net.c        |   8 +-
>>   net/tipc/node.c       |  28 +--
>>   net/tipc/socket.c     | 313 +++++++++++++++----------------
>>   net/tipc/subscr.c     |  84 +++++----
>>   net/tipc/subscr.h     |  12 +-
>>   10 files changed, 567 insertions(+), 517 deletions(-)
>>
>> --
>> 2.28.0
>>
>>
>>
>> _______________________________________________
>> tipc-discussion mailing list
>> tipc-discussion@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
