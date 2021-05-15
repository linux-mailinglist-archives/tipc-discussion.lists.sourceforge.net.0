Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33980381A13
	for <lists+tipc-discussion@lfdr.de>; Sat, 15 May 2021 19:07:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lhxlI-0004ag-FA; Sat, 15 May 2021 17:07:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lhxlG-0004aK-Kq
 for tipc-discussion@lists.sourceforge.net; Sat, 15 May 2021 17:07:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LRLHwXzscJAguR7+4+Z2JcTI43sQLnkXE4U2nVEolwo=; b=K0J8ZMxunS8qSWfeCXtVX8TUBX
 NTfthDAGMe/pisRb7Y94aC5uD8ETbCbxZbS8dVRNmJBQj1udarBtJnjQRW51p8kn7S6VjvcVjsAXs
 /8MlcIXd5NBYjOGyOqXuKp+sB0zLIsPqBXehKqB3D+5+Mie07DFi21PqXdz1HQCxEVOw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LRLHwXzscJAguR7+4+Z2JcTI43sQLnkXE4U2nVEolwo=; b=enioeBCDKM6r4b583m1kzPtCy+
 B5jkcz/42JENGuLkONcrls5S7/ZH6CBUhISHKtlFOnVVqfa9+l+FMicVEAWIWJcfpVWr7kix3JffD
 s4l8AZ2BuzHxsF9l/It+kJzWcBl3apOP0i2Kkt93oV8r8kR4ymloTvVC/qsa/151DHl8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lhxl5-0005ep-9w
 for tipc-discussion@lists.sourceforge.net; Sat, 15 May 2021 17:07:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621098438;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LRLHwXzscJAguR7+4+Z2JcTI43sQLnkXE4U2nVEolwo=;
 b=jEeAdLnvzHbpDjZhgztY07X/3YGmhEKyGR5eFcZhCyu7kfi6bFeLj/61asbeN4cZOWkFaX
 v7l7tuCrkceoNAEgXzelf9Zl42BP7dFOLOeoqXV7XyFWJv/t3dXhpkNtnMqBcQoqpCrWYz
 PfrS2xsgDGEnoOm287ZrCpbgh9j5f7U=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-138-aIj-wSgPNpmBugRJaZdLcQ-1; Sat, 15 May 2021 13:07:16 -0400
X-MC-Unique: aIj-wSgPNpmBugRJaZdLcQ-1
Received: by mail-qt1-f200.google.com with SMTP id
 69-20020aed304b0000b02901c6d87aed7fso1900356qte.21
 for <tipc-discussion@lists.sourceforge.net>;
 Sat, 15 May 2021 10:07:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=LRLHwXzscJAguR7+4+Z2JcTI43sQLnkXE4U2nVEolwo=;
 b=merW1PYGnOhfVbFHVBIzEUHHpjVZ4qpCyVZp+olKYxmpl8wlNTzBhpor5F38KCqHmr
 oyrDoMlT7WmumeinlsgCALhWu9C+gfF7S/ypcnZpPjV+q2rLqU7WexBXNeNGFMZiDkk5
 sqRhBhgXVdV3g5n6NxfEeforeefrQgY9WGla6XNQkK7DUgOZ2DrPtu/7y6t84ULmeC84
 l6T8pAqZPL8rSNim3z+6jo0hTbTjmYn4tlFXtNagvEQ/QuhJMD8jJ/pcetuNDjMTUjuo
 4zeufV3fb7miSJGhHJ2Mi+F3vE/QawITCc2F2bbSu1ZoGpSlT9SLKBRsEvy7zWg4odwh
 3CxQ==
X-Gm-Message-State: AOAM530wYUgqJwUIRbsYCYZjFzW+PjUzNA5J5jKSNOvYbEn6VJ1laztN
 awkoEW3rIWqLwKd7mxnK5b4EamjCPX9Th9LvKm7kziEwDevgaUGMBFnsfAJKqyhR5F912+f6K4l
 4RVevIDgMycgWjAXbjUKj+sLDm3r3bu2iL8aY
X-Received: by 2002:a05:6214:2467:: with SMTP id
 im7mr51540947qvb.59.1621098435918; 
 Sat, 15 May 2021 10:07:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy1lgjsY69NKTCUPQW1lzHHRDQnlh0MJM8BsXWu4MdwFSpcyLS9I4JkPWE4PACl9ElC6i5WUA==
X-Received: by 2002:a05:6214:2467:: with SMTP id
 im7mr51540935qvb.59.1621098435750; 
 Sat, 15 May 2021 10:07:15 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id m7sm7033935qki.67.2021.05.15.10.07.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 15 May 2021 10:07:15 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>
References: <20210514012303.6177-1-hoang.h.le@dektech.com.au>
 <162103021037.1424.641148387270376542.git-patchwork-notify@kernel.org>
 <03feebda-c08c-3963-e3fc-0acb5429f845@redhat.com>
 <CADvbK_doLyPGqJi9c5zy3=AHBR8hxxe6ATYrMFxQv1VtXVYuzw@mail.gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <096c74b0-f164-886f-978a-a3585eb86c69@redhat.com>
Date: Sat, 15 May 2021 13:07:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CADvbK_doLyPGqJi9c5zy3=AHBR8hxxe6ATYrMFxQv1VtXVYuzw@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lhxl5-0005ep-9w
Subject: Re: [tipc-discussion] [net] Revert "net:tipc: Fix a double free in
 tipc_sk_mcast_rcv"
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



On 5/15/21 11:58 AM, Xin Long wrote:
> On Fri, May 14, 2021 at 7:18 PM Jon Maloy <jmaloy@redhat.com> wrote:
>>
>>
>> On 5/14/21 6:10 PM, patchwork-bot+netdevbpf@kernel.org wrote:
>>> Hello:
>>>
>>> This patch was applied to netdev/net.git (refs/heads/master):
>>>
>>> On Fri, 14 May 2021 08:23:03 +0700 you wrote:
>>>> This reverts commit 6bf24dc0cc0cc43b29ba344b66d78590e687e046.
>>>> Above fix is not correct and caused memory leak issue.
>> I just convinced Xin (and myself) that the crash (double free) he was
>> observing, and which he wanted to fix with the "tipc: fix a race in
>> tipc_sk_mcast_rcv" patch was due to this bug.
>> Now, realizing that this is causing a memory leak and not a double free
>> I suspect there might still be an issue.
>> Does anybody have a theory?
> Hi Jon, I think the double free issue was due to the one I fixed in the patch
> I posted:
>
> [PATCH net] tipc: skb_linearize the head skb when reassembling msgs
>
> see the changelog.
That makes sense. So, just backport Hoang's patch and re-run the tests, 
and we'll have that one confirmed.
///jon

>> ///jon
>>
>>>> Fixes: 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
>>>> Acked-by: Jon Maloy <jmaloy@redhat.com>
>>>> Acked-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
>>>> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
>>>>
>>>> [...]
>>> Here is the summary with links:
>>>     - [net] Revert "net:tipc: Fix a double free in tipc_sk_mcast_rcv"
>>>       https://git.kernel.org/netdev/net/c/75016891357a
>>>
>>> You are awesome, thank you!
>>> --
>>> Deet-doot-dot, I am a bot.
>>> https://korg.docs.kernel.org/patchwork/pwbot.html
>>>
>>>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
