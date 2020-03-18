Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA00189DD8
	for <lists+tipc-discussion@lfdr.de>; Wed, 18 Mar 2020 15:28:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jEZg4-0007y4-CF; Wed, 18 Mar 2020 14:28:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jEZg2-0007xw-3n
 for tipc-discussion@lists.sourceforge.net; Wed, 18 Mar 2020 14:28:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6zP3Ml7s1Sbymc1KaBitn5ahfo91b338Cd0ewSZbYHs=; b=mNcjOY/ZZmmgK2hdBTK4MejPs
 9U7uzAyf0M3qaG6YL8LF37Y6suiVJU1in7NKFcSoRPEF10Z57Y1qUNB4/gcfLebXjzBirEqxYCeTP
 soIen7XCBiISGT9YSH7qdUw7/QspMXWhs2Gmq0HQkDsA6GzYImcx1Ei4KbXp1RCFGbem4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:
 To:Subject:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6zP3Ml7s1Sbymc1KaBitn5ahfo91b338Cd0ewSZbYHs=; b=XhjHOmJl6Aby8YoSjEP8rCLXq5
 Uk/kzn9+jQHGQT1SkEk+/N6Zz9jMneEdmeGiEas3ujNJJvjEXpOYyD2zTSV38AYHCCz06YIOZQY9g
 HEhQpWAJIHnSXKYDLgVs2EDFwtt6sQBOGwV4NJmIJhnQIsrqkDfp1po1e+/my28iURJ4=;
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jEZfz-00DGoa-Tw
 for tipc-discussion@lists.sourceforge.net; Wed, 18 Mar 2020 14:28:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584541681;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6zP3Ml7s1Sbymc1KaBitn5ahfo91b338Cd0ewSZbYHs=;
 b=OT0SpKoudgCcbO0ZpNLCDML4I4EGodrMfAPIa/fa7m7TPoLyuWfH0rAd1hlyC1lvVPuOmI
 Fcq5NjaM2gDCkc5NRk1/jbTOJz6HYIvEuJ1bN/1E/47xtzLbexfQtCOcSMiKVywOP10jvB
 PYiFjp8yiLQ46Tq3nzXjClTvXSYQzic=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-J_wkhcNJOaeNIEIZfKws3Q-1; Wed, 18 Mar 2020 10:27:56 -0400
X-MC-Unique: J_wkhcNJOaeNIEIZfKws3Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8EFA91088380;
 Wed, 18 Mar 2020 14:27:54 +0000 (UTC)
Received: from [10.10.112.60] (ovpn-112-60.rdu2.redhat.com [10.10.112.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 64D2919C58;
 Wed, 18 Mar 2020 14:27:52 +0000 (UTC)
To: Xin Long <lucien.xin@gmail.com>, Dmitry Vyukov <dvyukov@google.com>
References: <1565595162-1383-1-git-send-email-ying.xue@windriver.com>
 <1565595162-1383-4-git-send-email-ying.xue@windriver.com>
 <CACT4Y+Z6mxvuC4+cmWc++zrJrXWPNDVuguHRHyeEp-teuJ_yNA@mail.gmail.com>
 <CACT4Y+ZN_1OPukSwp6U4Z7o=8g5SsDhFZD9rtnD8CRObYZgYYg@mail.gmail.com>
 <CADvbK_cPqbBRvm3qGGdG_9jcShXG8Xyy6BXqzEKC-RMttHXNNw@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <2e3cf1ba-dd61-9014-987e-6c9ecd1c539c@redhat.com>
Date: Wed, 18 Mar 2020 10:27:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CADvbK_cPqbBRvm3qGGdG_9jcShXG8Xyy6BXqzEKC-RMttHXNNw@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jEZfz-00DGoa-Tw
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [PATCH v2 3/3] tipc: fix issue of calling
 smp_processor_id() in preemptible
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
Cc: Hillf Danton <hdanton@sina.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>, netdev <netdev@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 tipc-discussion@lists.sourceforge.net, David Miller <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 2/20/20 10:44 AM, Xin Long wrote:
> On Wed, Feb 19, 2020 at 4:34 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>> On Wed, Feb 19, 2020 at 9:29 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>>> On Mon, Aug 12, 2019 at 9:44 AM Ying Xue <ying.xue@windriver.com> wrote:
>>>> syzbot found the following issue:
>>>>
>>>> [   81.119772][ T8612] BUG: using smp_processor_id() in preemptible [00000000] code: syz-executor834/8612
>>>> [   81.136212][ T8612] caller is dst_cache_get+0x3d/0xb0
>>>> [   81.141450][ T8612] CPU: 0 PID: 8612 Comm: syz-executor834 Not tainted 5.2.0-rc6+ #48
[...]
>>>> Fixes: e9c1a793210f ("tipc: add dst_cache support for udp media")
>>>> Reported-by: syzbot+1a68504d96cd17b33a05@syzkaller.appspotmail.com
>>>> Signed-off-by: Hillf Danton <hdanton@sina.com>
>>>> Signed-off-by: Ying Xue <ying.xue@windriver.com>
>>> Hi,
>>>
>>> Was this ever merged?
>>> The bug is still open, alive and kicking:
>>> https://syzkaller.appspot.com/bug?extid=1a68504d96cd17b33a05
>>>
>>> and one of the top crashers currently.
>>> Along with few other top crashers, these bugs prevent most of the
>>> other kernel testing from happening.
>> /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
>>
>> +jmaloy new email address

Acked-by: Jon Maloy <jmaloy@redhat.com>


>>
>>>> ---
>>>>   net/tipc/udp_media.c | 12 +++++++++---
>>>>   1 file changed, 9 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
>>>> index 287df687..ca3ae2e 100644
>>>> --- a/net/tipc/udp_media.c
>>>> +++ b/net/tipc/udp_media.c
>>>> @@ -224,6 +224,8 @@ static int tipc_udp_send_msg(struct net *net, struct sk_buff *skb,
>>>>          struct udp_bearer *ub;
>>>>          int err = 0;
>>>>
>>>> +       local_bh_disable();
>>>> +
>>>>          if (skb_headroom(skb) < UDP_MIN_HEADROOM) {
>>>>                  err = pskb_expand_head(skb, UDP_MIN_HEADROOM, 0, GFP_ATOMIC);
>>>>                  if (err)
>>>> @@ -237,9 +239,12 @@ static int tipc_udp_send_msg(struct net *net, struct sk_buff *skb,
>>>>                  goto out;
>>>>          }
>>>>
>>>> -       if (addr->broadcast != TIPC_REPLICAST_SUPPORT)
>>>> -               return tipc_udp_xmit(net, skb, ub, src, dst,
>>>> -                                    &ub->rcast.dst_cache);
>>>> +       if (addr->broadcast != TIPC_REPLICAST_SUPPORT) {
>>>> +               err = tipc_udp_xmit(net, skb, ub, src, dst,
>>>> +                                   &ub->rcast.dst_cache);
>>>> +               local_bh_enable();
>>>> +               return err;
>>>> +       }
>>>>
>>>>          /* Replicast, send an skb to each configured IP address */
>>>>          list_for_each_entry_rcu(rcast, &ub->rcast.list, list) {
>>>> @@ -259,6 +264,7 @@ static int tipc_udp_send_msg(struct net *net, struct sk_buff *skb,
>>>>          err = 0;
>>>>   out:
>>>>          kfree_skb(skb);
>>>> +       local_bh_enable();
>>>>          return err;
>>>>   }
>>>>
>>>> --
>>>> 2.7.4
>>>>
>>>> --
>>>> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
>>>> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
>>>> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/1565595162-1383-4-git-send-email-ying.xue%40windriver.com.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
