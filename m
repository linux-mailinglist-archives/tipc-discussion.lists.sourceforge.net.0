Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B921DF028
	for <lists+tipc-discussion@lfdr.de>; Fri, 22 May 2020 21:47:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jcDdj-0006tQ-80; Fri, 22 May 2020 19:47:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jcDdh-0006tJ-Sm
 for tipc-discussion@lists.sourceforge.net; Fri, 22 May 2020 19:47:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YdS6AOeSWK0jUYamTi9EOv+S8oDpX9oHz8NpRLwzlnY=; b=WupReKZZ2Gfw6tWYuleDGltDiw
 7S+p1gasCKeeap5CQ2Kw0lQMA7iRlmQFiUhLKCnufT5neD9+fyEDQQ5Se5PxT5AN0ukYGrP+Y83oe
 10w0GVeJ9/3PYFldWwGKV4lP+nt+FmvT9NNLkw6+IuK2FXqXRwBlP5LbY7QL0xwYHs68=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YdS6AOeSWK0jUYamTi9EOv+S8oDpX9oHz8NpRLwzlnY=; b=dzl4CTZh6qj4TeSY8cXtDKl2Y/
 X/ru2iR85+B37sFMrNpDL72xanLgbKjz9il5oML+JzrEncRgi9dMpjhYVGwW5lO9Ih9jQIsaqfpKb
 kMBYUVeNvF1y78ifpCIkakapiyLoet6+/jnB1qerxJ+if6bBthMDRSSlM30HkXIpo6RA=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jcDdg-002jLg-JY
 for tipc-discussion@lists.sourceforge.net; Fri, 22 May 2020 19:47:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590176842;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YdS6AOeSWK0jUYamTi9EOv+S8oDpX9oHz8NpRLwzlnY=;
 b=R760oobLu3k/+/nyswzlZNI3In4W8//cIe1tFSTbFhFLDidJXsDP4I/Wifj0lIKRVoeCDT
 AVKxjRbGjGSaNlMXyWAQABbG3MU2ndB19mXdyfUmYhPVPT6LgtZoQNjyhAXPU/Mo+7lWwn
 DtxhUXYDRJeyvMHUBa0arXA/nshjmuY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-19-ZIOObcwIP0SER6T9XB6ipQ-1; Fri, 22 May 2020 15:47:18 -0400
X-MC-Unique: ZIOObcwIP0SER6T9XB6ipQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6F9C6107ACCA;
 Fri, 22 May 2020 19:47:17 +0000 (UTC)
Received: from [10.10.117.121] (ovpn-117-121.rdu2.redhat.com [10.10.117.121])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8CA3160E1C;
 Fri, 22 May 2020 19:47:16 +0000 (UTC)
To: Eric Dumazet <eric.dumazet@gmail.com>, Xin Long <lucien.xin@gmail.com>,
 Eric Dumazet <edumazet@google.com>
References: <20200521182958.163436-1-edumazet@google.com>
 <CADvbK_cdSYZvTj6jFCXHEU0VhD8K7aQ3ky_fvUJ49N-5+ykJkg@mail.gmail.com>
 <CANn89i+x=xbXoKekC6bF_ZMBRMY_mkmuVbNSW3LcRncsiZGd_g@mail.gmail.com>
 <CANn89iJVSb3BWO=VGRX0KkvrxZ7=ZYaK6HwsexK8y+4NJqXopA@mail.gmail.com>
 <CADvbK_eJx=PyH8MDCWQJMRW-p+nv9QtuQGG2TtYX=9n9oY7rJg@mail.gmail.com>
 <76d02a44-91dd-ded6-c3dc-f86685ae1436@redhat.com>
 <217375c0-d49d-63b1-0628-9aaf7e4e42d0@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <bebc5293-d5be-39b5-8ee4-871dd3aa7240@redhat.com>
Date: Fri, 22 May 2020 15:47:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <217375c0-d49d-63b1-0628-9aaf7e4e42d0@gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jcDdg-002jLg-JY
Subject: Re: [tipc-discussion] [PATCH net] tipc: block BH before using
 dst_cache
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
Cc: netdev <netdev@vger.kernel.org>, syzbot <syzkaller@googlegroups.com>,
 tipc-discussion@lists.sourceforge.net,
 "David S . Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 5/22/20 11:57 AM, Eric Dumazet wrote:
>
> On 5/22/20 8:01 AM, Jon Maloy wrote:
>>
>> On 5/22/20 2:18 AM, Xin Long wrote:
>>> On Fri, May 22, 2020 at 1:55 PM Eric Dumazet <edumazet@google.com> wrote:
>>>> Resend to the list in non HTML form
>>>>
>>>>
>>>> On Thu, May 21, 2020 at 10:53 PM Eric Dumazet <edumazet@google.com> wrote:
>>>>>
>>>>> On Thu, May 21, 2020 at 10:50 PM Xin Long <lucien.xin@gmail.com> wrote:
>>>>>> On Fri, May 22, 2020 at 2:30 AM Eric Dumazet <edumazet@google.com> wrote:
>>>>>>> dst_cache_get() documents it must be used with BH disabled.
>>>>>> Interesting, I thought under rcu_read_lock() is enough, which calls
>>>>>> preempt_disable().
>>>>> rcu_read_lock() does not disable BH, never.
>>>>>
>>>>> And rcu_read_lock() does not necessarily disable preemption.
>>> Then I need to think again if it's really worth using dst_cache here.
>>>
>>> Also add tipc-discussion and Jon to CC list.
>> The suggested solution will affect all bearers, not only UDP, so it is not a good.
>> Is there anything preventing us from disabling preemtion inside the scope of the rcu lock?
>>
>> ///jon
>>
> BH is disabled any way few nano seconds later, disabling it a bit earlier wont make any difference.
The point is that if we only disable inside tipc_udp_xmit() (the 
function pointer call) the change will only affect the UDP bearer, where 
dst_cache is used.
The corresponding calls for the Ethernet and Infiniband bearers don't 
use dst_cache, and don't need this disabling. So it does makes a 
difference.
///jon

>
> Also, if you intend to make dst_cache BH reentrant, you will have to make that for net-next, not net tree.
>
> Please carefully read include/net/dst_cache.h
>
> It is very clear about BH requirements.
>
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
