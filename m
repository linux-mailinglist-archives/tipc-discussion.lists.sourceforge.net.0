Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F1729CDF1
	for <lists+tipc-discussion@lfdr.de>; Wed, 28 Oct 2020 06:21:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kXdu1-00073R-M9; Wed, 28 Oct 2020 05:21:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1kXdu0-00073J-KG
 for tipc-discussion@lists.sourceforge.net; Wed, 28 Oct 2020 05:21:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MrRkg6hgrIakHQHLsBsS2GEI0YeeJqZ4UdmXD7YSKjI=; b=eIUOZXbXNRzfL8tRn0yjVu4v2t
 b3TBecPyfVerpl52h2ULSiUNXhLvKoz1zIFtKrKB3E9uyO6Kyou4C99jURlPuw9XFsLG8D+WzMJh5
 B0tdBot0puW1xdaoWdOXRtWgkRjDNmt+9pCJXpXzXv3lgiOeM3BoirygntkBlg1YLVrA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MrRkg6hgrIakHQHLsBsS2GEI0YeeJqZ4UdmXD7YSKjI=; b=T1685j2UPzrL2SYELh+5aTXYyr
 Suhz5K5QU57KU4hGLwpmbtus2LzhQf9VI30Gea6To8twmIvyRrqZJn1uU/HDHWthvCgUGYNVY7j/v
 Ze5Z05GdVNtE2XYavbe0xSC97X6qbaiLUCit+QnqiO7vJC6enEYm6lRtgiSu088UFdeQ=;
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kXdtv-00GXfB-NH
 for tipc-discussion@lists.sourceforge.net; Wed, 28 Oct 2020 05:21:40 +0000
Received: by mail-wm1-f68.google.com with SMTP id t3so1118208wmi.3
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 27 Oct 2020 22:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MrRkg6hgrIakHQHLsBsS2GEI0YeeJqZ4UdmXD7YSKjI=;
 b=YCunPHezetGcSHSlLwkXMRoDhpTX/SwcYw92RKFP3639a5z30kEZmNfvYGuxaeZiqz
 4SSFj8ZMzre3j7ayGYrX4k0Qn56aIG2ZOCrPsfhkgtx5DUS0EuCM+xBNdBS7XzwVegRb
 KElhpxmWzsdQD4jRhUo4ma+1NtGSAl3M0TdOXGnLQlRdBtIRWedN2FybLMlRvI6KbfgA
 2u3XmViuB1B7BQ1n7s4pefiBvuYgwIQ021rlsWJ2lvaTrESetIArImlWA/f3Vz9Jshx5
 Q6gCaICypb6ThZTX7DXUpn0RvsUX4VCJud8S4tliGi4Xf5gG5ctvDaunlWVswp4CKXMS
 TR4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MrRkg6hgrIakHQHLsBsS2GEI0YeeJqZ4UdmXD7YSKjI=;
 b=b6O7QYBJMKn/PcWHXLW9LOSuL/LR1yHFx/7mQHaTtm6ephf4FJl+Hc1EfP3XN8VVM7
 zGf4t4E866TrYxjS3gs5Y5qKFqJJF5eWuw2GLL1AxSViPaZnMocYw3oOWjvdAph3myo+
 QBXLWuk1srssWp4vPyoyZrYjNUwlH0nqOLYxtgzDvnEubz3Sj2H/iZouFlt35ZtRG36n
 Df/nzZhEXXHQs3BEDbnzwIhkaclgOyRDBt6/9+xhEHHuNAR8HnM2t9AFSSPAQM4SWgy2
 KKgI2oJotRwzyeJGpKnet63wVJ/tt89zzl3jcLi7TScpWDmHTVpt0hHT5eoZDsWdjJZj
 Iy1A==
X-Gm-Message-State: AOAM531X4gTqa7bS5wZ9AgYyeAWwGXtyLh7DYKCXx5TVuhRN8TMC3ur9
 f6QPMrI58zJAe4myjhMgnPdJH6rcFKCztB8yHg5ziXLjq0w=
X-Google-Smtp-Source: ABdhPJw+mVZZyEpmi3KZkMCcf8rrXtJsNXCp53B36dynxKI8jTc3ft8rivfJw9XMYfoE7wSnqpe+GQD/txtLTX0KNow=
X-Received: by 2002:a1c:750b:: with SMTP id o11mr6293100wmc.32.1603862488437; 
 Tue, 27 Oct 2020 22:21:28 -0700 (PDT)
MIME-Version: 1.0
References: <20201027032403.1823-1-tung.q.nguyen@dektech.com.au>
In-Reply-To: <20201027032403.1823-1-tung.q.nguyen@dektech.com.au>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 28 Oct 2020 13:21:17 +0800
Message-ID: <CADvbK_fPKYoyk1w4ri_oxRiutGZDE9FaE5xrx1UXgY2_gdCO0Q@mail.gmail.com>
To: Tung Nguyen <tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.68 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kXdtv-00GXfB-NH
Subject: Re: [tipc-discussion] [net v3 1/1] tipc: fix memory leak caused by
 tipc_buf_append()
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
Cc: network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net,
 davem <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Tue, Oct 27, 2020 at 11:25 AM Tung Nguyen
<tung.q.nguyen@dektech.com.au> wrote:
>
> Commit ed42989eab57 ("tipc: fix the skb_unshare() in tipc_buf_append()")
> replaced skb_unshare() with skb_copy() to not reduce the data reference
> counter of the original skb intentionally. This is not the correct
> way to handle the cloned skb because it causes memory leak in 2
> following cases:
>  1/ Sending multicast messages via broadcast link
>   The original skb list is cloned to the local skb list for local
>   destination. After that, the data reference counter of each skb
>   in the original list has the value of 2. This causes each skb not
>   to be freed after receiving ACK:
>   tipc_link_advance_transmq()
>   {
>    ...
>    /* release skb */
>    __skb_unlink(skb, &l->transmq);
>    kfree_skb(skb); <-- memory exists after being freed
>   }
>
>  2/ Sending multicast messages via replicast link
>   Similar to the above case, each skb cannot be freed after purging
>   the skb list:
>   tipc_mcast_xmit()
>   {
>    ...
>    __skb_queue_purge(pkts); <-- memory exists after being freed
>   }
>
> This commit fixes this issue by using skb_unshare() instead. Besides,
> to avoid use-after-free error reported by KASAN, the pointer to the
> fragment is set to NULL before calling skb_unshare() to make sure that
> the original skb is not freed after freeing the fragment 2 times in
> case skb_unshare() returns NULL.
>
> Fixes: ed42989eab57 ("tipc: fix the skb_unshare() in tipc_buf_append()")
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Reported-by: Thang Hoang Ngo <thang.h.ngo@dektech.com.au>
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
Reviewed-by: Xin Long <lucien.xin@gmail.com>

> ---
>  net/tipc/msg.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 2a78aa701572..32c79c59052b 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -150,12 +150,11 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
>         if (fragid == FIRST_FRAGMENT) {
>                 if (unlikely(head))
>                         goto err;
> -               if (skb_cloned(frag))
> -                       frag = skb_copy(frag, GFP_ATOMIC);
> +               *buf = NULL;
> +               frag = skb_unshare(frag, GFP_ATOMIC);
>                 if (unlikely(!frag))
>                         goto err;
>                 head = *headbuf = frag;
> -               *buf = NULL;
>                 TIPC_SKB_CB(head)->tail = NULL;
>                 if (skb_is_nonlinear(head)) {
>                         skb_walk_frags(head, tail) {
> --
> 2.17.1
>
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
