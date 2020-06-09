Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC20E1F3C31
	for <lists+tipc-discussion@lfdr.de>; Tue,  9 Jun 2020 15:20:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jieBE-0003BV-Lt; Tue, 09 Jun 2020 13:20:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jieB3-000395-GC
 for tipc-discussion@lists.sourceforge.net; Tue, 09 Jun 2020 13:20:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3KlxA4DSlhnCzh+lTjrtgJZbLEiah2MTU2gmUwnaJeI=; b=bgXn6fYmmlA9RukgEe/kV4pp0i
 yuaNm1wMFPEg98LjWMWA40j+0ehTIvI0dRvQ8+Zn2J3cLdQgD7YZbYRMADeWsrTjfW25JulZU6fLH
 b6Cw68NH8FsAH3avEpP/fPo6oXwzYng7A1ScVowBBH+SE/Hh8DvyX0cHsIsMAQLW5NNM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3KlxA4DSlhnCzh+lTjrtgJZbLEiah2MTU2gmUwnaJeI=; b=M5dIUSi/islCRxNHkWQ6LaSk2T
 2pwpE8waG2JPycGi4A6FHANW8SNzMiewe3kT4E9XhxGUxsfI3rOKTBOXRgT7gm/0oPiBF4gvrcjC0
 DXG0APp2X3ngplnrTSQYTodY9eNNBXVC899L4K+GcWm2lU8aux70XwYUmTn4drDR9pWU=;
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jieAU-00CqrL-92
 for tipc-discussion@lists.sourceforge.net; Tue, 09 Jun 2020 13:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591708787;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3KlxA4DSlhnCzh+lTjrtgJZbLEiah2MTU2gmUwnaJeI=;
 b=A0XX+MGESrgwbp5pCW2AIpamGtxW8Bl8UZ9iM1ownTFYr2RoLEyfJY0X7S1ZORjnSqRvg1
 u5PT34dY4FAl6kgiCLiaXGM2Mqw87xP5y9FX4tdvunygXRVNavTXUm4wQaE7eOcQHSPwKS
 m4e5aT/y/RXe/hyNid2s02tuEay1WX8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-512-CqmxIi4tMIaO2A9Hzd6xOg-1; Tue, 09 Jun 2020 09:19:46 -0400
X-MC-Unique: CqmxIi4tMIaO2A9Hzd6xOg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E2E7E18A0760;
 Tue,  9 Jun 2020 13:19:44 +0000 (UTC)
Received: from [10.10.117.148] (ovpn-117-148.rdu2.redhat.com [10.10.117.148])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0F40E5D9F1;
 Tue,  9 Jun 2020 13:19:43 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200609035520.28571-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <42697551-e1eb-7831-8f6b-77ac8ae162e8@redhat.com>
Date: Tue, 9 Jun 2020 09:19:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200609035520.28571-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1jieAU-00CqrL-92
Subject: Re: [tipc-discussion] [net] tipc: fix kernel WARNING in
 tipc_msg_append()
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
Cc: tipc-dek@dektech.com.au
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 6/8/20 11:55 PM, Tuong Lien wrote:
> syzbot found the following issue:
>
> WARNING: CPU: 0 PID: 6808 at include/linux/thread_info.h:150 check_copy_size include/linux/thread_info.h:150 [inline]
> WARNING: CPU: 0 PID: 6808 at include/linux/thread_info.h:150 copy_from_iter include/linux/uio.h:144 [inline]
> WARNING: CPU: 0 PID: 6808 at include/linux/thread_info.h:150 tipc_msg_append+0x49a/0x5e0 net/tipc/msg.c:242
> Kernel panic - not syncing: panic_on_warn set ...
>
> This happens after commit 5e9eeccc58f3 ("tipc: fix NULL pointer
> dereference in streaming") that tried to build at least one buffer even
> when the message data length is zero... However, it now exposes another
> bug that the 'mss' can be zero and the 'cpy' will be negative, thus the
> above kernel WARNING will appear!
> The zero value of 'mss' is never expected because it means Nagle is not
> enabled for the socket (actually the socket type was 'SOCK_SEQPACKET'),
> so the function 'tipc_msg_append()' must not be called at all. But that
> was in this particular case since the message data length was zero, and
> the 'send <= maxnagle' check became true.
>
> We resolve the issue by explicitly checking if Nagle is enabled for the
> socket, i.e. 'maxnagle != 0' before calling the 'tipc_msg_append()'. In
> addition, we put a sanity check in the function to avoid calling the
> 'copy_from_iter()' with a negative size and doing an infinite loop.
---
Same suggestion as I had to Hoang; add the three dashes above to avoid that
the version info by accident becomes part of the commit log.
>
> v2: use 'size_t' in the 'min_t()' to get a proper value of 'cpy' (after
>      Jon's comment)
>
> Reported-by: syzbot+75139a7d2605236b0b7f@syzkaller.appspotmail.com
> Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/msg.c    | 4 ++--
>   net/tipc/socket.c | 3 ++-
>   2 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 046e4cb3acea..01b64869a173 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -238,14 +238,14 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
>   		hdr = buf_msg(skb);
>   		curr = msg_blocks(hdr);
>   		mlen = msg_size(hdr);
> -		cpy = min_t(int, rem, mss - mlen);
> +		cpy = min_t(size_t, rem, mss - mlen);
>   		if (cpy != copy_from_iter(skb->data + mlen, cpy, &m->msg_iter))
>   			return -EFAULT;
>   		msg_set_size(hdr, mlen + cpy);
>   		skb_put(skb, cpy);
>   		rem -= cpy;
>   		total += msg_blocks(hdr) - curr;
> -	} while (rem);
> +	} while (rem > 0);
>   	return total - accounted;
>   }
>   
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 26123f4177fd..a94f38333698 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -1574,7 +1574,8 @@ static int __tipc_sendstream(struct socket *sock, struct msghdr *m, size_t dlen)
>   			break;
>   		send = min_t(size_t, dlen - sent, TIPC_MAX_USER_MSG_SIZE);
>   		blocks = tsk->snd_backlog;
> -		if (tsk->oneway++ >= tsk->nagle_start && send <= maxnagle) {
> +		if (tsk->oneway++ >= tsk->nagle_start && maxnagle &&
> +		    send <= maxnagle) {
>   			rc = tipc_msg_append(hdr, m, send, maxnagle, txq);
>   			if (unlikely(rc < 0))
>   				break;
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
