Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EF41F19B2
	for <lists+tipc-discussion@lfdr.de>; Mon,  8 Jun 2020 15:13:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jiHaL-0007Hm-04; Mon, 08 Jun 2020 13:13:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jiHaJ-0007Hf-JN
 for tipc-discussion@lists.sourceforge.net; Mon, 08 Jun 2020 13:13:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8ev8th8q/zMRPcfp5QtzeflRgTCwdODUGVnZ+1hg2nM=; b=CzmpeAO88ylUvyP+v+ICsYMWfA
 eNJ2i9pIMQq4UTOBQRARErZt/UZ1175VexgW8rN+FZsh6lL0s5+JCXV0Hbhw+znnDdUMO4OjUgzIS
 eQI8ha0XudoBhZ4hrvgR5XqqSM04Nuk86YsZmjRggNmDViIB2uUiFs9nK9yFlEKz07Bw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8ev8th8q/zMRPcfp5QtzeflRgTCwdODUGVnZ+1hg2nM=; b=JmKP61Dpd8Zk28CTvGvBWvgnMq
 MenXhyDzej21N+08hgPiFa5MGzOz9WHJqq+gwyL/yqXCbWjVvDYOsyWayP7S0xbvGwuY3t5N+mixn
 jAz3CjU20smcu4BcWp1mOCRKzQEAh0ZXN3mDA13MCz9HtDrA866LOJIsE6STDkwZ4vPo=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jiHaF-00BOcA-R0
 for tipc-discussion@lists.sourceforge.net; Mon, 08 Jun 2020 13:13:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591621973;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8ev8th8q/zMRPcfp5QtzeflRgTCwdODUGVnZ+1hg2nM=;
 b=UMCulgkmGFUvo5ARbk5SFy5BCwjjzt6dX3oSRw30IQUu+qd8yurT0Hyw7EyKdQcZ0cqC9c
 mE38AY3q6lYXFhS00iMAkBiPJ00+JCxohBeIhfE06xJkAlPZo/BfAE9stV/qkz+8m0ihPD
 y6k1E/02OP2GvqTWI8BNnuZaD8nblHw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247-E962zu-DO6WsTcUu5sgsXg-1; Mon, 08 Jun 2020 09:12:50 -0400
X-MC-Unique: E962zu-DO6WsTcUu5sgsXg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 481981854C6B;
 Mon,  8 Jun 2020 13:12:49 +0000 (UTC)
Received: from [10.10.113.13] (ovpn-113-13.rdu2.redhat.com [10.10.113.13])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 208D3891E8;
 Mon,  8 Jun 2020 13:12:47 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200608120530.20690-1-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <d42fb931-1bd4-a67d-2de3-ca02adc769dd@redhat.com>
Date: Mon, 8 Jun 2020 09:12:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200608120530.20690-1-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jiHaF-00BOcA-R0
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



On 6/8/20 8:05 AM, Tuong Lien wrote:
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
>
> Reported-by: syzbot+75139a7d2605236b0b7f@syzkaller.appspotmail.com
> Fixes: c0bceb97db9e ("tipc: add smart nagle feature")
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/msg.c    | 5 +++--
>   net/tipc/socket.c | 3 ++-
>   2 files changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 046e4cb3acea..ea3ebf35e0c2 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -239,13 +239,14 @@ int tipc_msg_append(struct tipc_msg *_hdr, struct msghdr *m, int dlen,
>   		curr = msg_blocks(hdr);
>   		mlen = msg_size(hdr);
>   		cpy = min_t(int, rem, mss - mlen);
> -		if (cpy != copy_from_iter(skb->data + mlen, cpy, &m->msg_iter))
> +		if (cpy < 0 ||
You can probably just redeclare cpy (and mlen, rem) to u32 here.
///jon
> +		    cpy != copy_from_iter(skb->data + mlen, cpy, &m->msg_iter))
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



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
