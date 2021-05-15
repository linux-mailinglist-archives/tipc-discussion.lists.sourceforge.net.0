Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 720B93819B6
	for <lists+tipc-discussion@lfdr.de>; Sat, 15 May 2021 17:59:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lhwh5-0006qm-5O; Sat, 15 May 2021 15:59:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lucien.xin@gmail.com>) id 1lhwh3-0006qe-2I
 for tipc-discussion@lists.sourceforge.net; Sat, 15 May 2021 15:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=12u3hawobygJFlD2zY+/FS/MyO//wSypvy6GKJJzBBE=; b=CPQyo9lsScbUb/hN9TDQz4tNAh
 bB4J4dWdm/aBU2uOpkZMn7d8HEsQVj0wgNAXK2QYrnYs4V5VzVFp0+zvpV0FzoOSVBHzR+iTD03yF
 a6FFkyYoVfeTICFmWK6C4fu8vHO5xRktzDGz2Ox62JrCxHqJUwy5nZnK9tDsFtCCkTi8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=12u3hawobygJFlD2zY+/FS/MyO//wSypvy6GKJJzBBE=; b=hS0y0pAFK6XeS1v80BW5gwC3YP
 DaOkUSpsdWppfG4TzZqZxi0fCuoBlkezkTFyfFVqlD5Kh+957w4ZsyB0kO7kc3vgn14xQsOBl51La
 0cSxDVKx6QFQxntIdOsQgVPMTaZR5dr8LMkClKKYR69Vd0rI6bYL7jsUNLaY3biL284c=;
Received: from mail-wr1-f43.google.com ([209.85.221.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lhwh0-009U49-5a
 for tipc-discussion@lists.sourceforge.net; Sat, 15 May 2021 15:59:09 +0000
Received: by mail-wr1-f43.google.com with SMTP id h4so2031646wrt.12
 for <tipc-discussion@lists.sourceforge.net>;
 Sat, 15 May 2021 08:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=12u3hawobygJFlD2zY+/FS/MyO//wSypvy6GKJJzBBE=;
 b=WCv9Lf0k8Sn5ZhQaUl+IMW2gbaJcvObUjLNaWPlxmLuunLCcfjVqhJYZkef4nuLj8F
 yWvyWKtaJb9/LSVO1v38qAUkJuoB+6jlpo9/q7npj0t5Ti7KKFdxWMWKwYq/WoVAdqpL
 8x9iKxLj3Bbsh1wZLUs/mDGCZN7VoNR90KzJYrEE3BMKZ6cAGpKZmrKI7mN9nJCHuPIB
 Ls5PSzoN2uZ+HY9+Bidn+dO4m3yrvTCAq7x18w7qPG9B4rspbZg3gt38gsCyinSzxNgT
 lgKupA8hSKidT56igBUaZC7DxmrR8frU+3/TAK057HipJj/88F2JiO4c0eq/eOF+SasD
 PoPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=12u3hawobygJFlD2zY+/FS/MyO//wSypvy6GKJJzBBE=;
 b=S80FnaejhnE30FNLITXMapOfmRumx8GO5Rj+ccDcYMymhIoa07mpAvnwmVIV8gDXab
 xTlCW4wN9+AoJNz1WTnGqQnqUwy7iPk6MQhjipocSgvIulJFTQr2qlhLYioY+3y1A9aq
 vM3zscfQr1nCRMlTk6Np+VycHoDhrxtZknTJkpHmAeS8BDy5SwbBNfMX/DFv4Ykq78Vg
 ELruVd+9+BNN1Ay6Rb215I8VYWfY2wwnnqIIeavuEZTvpkGJUtiSPCaAAew/15HrcD57
 /op7s1VK6Jvh9VzNRCJSFymhyvEItcrbUp3jtVr4hloD3lgqCqqY8CEUzEZi495DB6dx
 XGpA==
X-Gm-Message-State: AOAM5326AigiTyojMebzcyFUYmLpHPkrJ6FbLIwWBauEz7cgYRdgY8mI
 Sxjne3q8W+cUxoqFRHs7gwF6age/VTFLI15hODU=
X-Google-Smtp-Source: ABdhPJz0GxCjL++uDAiJ1aRPT+oa3O8ZPtxi/bBu/yMNLrmLNT9C7nW8k+oZdrSwsZoEiep4C6oh1lX6mqU51X94mqI=
X-Received: by 2002:adf:b64b:: with SMTP id i11mr16079165wre.157.1621094338014; 
 Sat, 15 May 2021 08:58:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210514012303.6177-1-hoang.h.le@dektech.com.au>
 <162103021037.1424.641148387270376542.git-patchwork-notify@kernel.org>
 <03feebda-c08c-3963-e3fc-0acb5429f845@redhat.com>
In-Reply-To: <03feebda-c08c-3963-e3fc-0acb5429f845@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Sat, 15 May 2021 11:58:47 -0400
Message-ID: <CADvbK_doLyPGqJi9c5zy3=AHBR8hxxe6ATYrMFxQv1VtXVYuzw@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.43 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.43 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lhwh0-009U49-5a
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Fri, May 14, 2021 at 7:18 PM Jon Maloy <jmaloy@redhat.com> wrote:
>
>
>
> On 5/14/21 6:10 PM, patchwork-bot+netdevbpf@kernel.org wrote:
> > Hello:
> >
> > This patch was applied to netdev/net.git (refs/heads/master):
> >
> > On Fri, 14 May 2021 08:23:03 +0700 you wrote:
> >> This reverts commit 6bf24dc0cc0cc43b29ba344b66d78590e687e046.
> >> Above fix is not correct and caused memory leak issue.
>
> I just convinced Xin (and myself) that the crash (double free) he was
> observing, and which he wanted to fix with the "tipc: fix a race in
> tipc_sk_mcast_rcv" patch was due to this bug.
> Now, realizing that this is causing a memory leak and not a double free
> I suspect there might still be an issue.
> Does anybody have a theory?
Hi Jon, I think the double free issue was due to the one I fixed in the patch
I posted:

[PATCH net] tipc: skb_linearize the head skb when reassembling msgs

see the changelog.
>
> ///jon
>
> >>
> >> Fixes: 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
> >> Acked-by: Jon Maloy <jmaloy@redhat.com>
> >> Acked-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> >> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> >>
> >> [...]
> > Here is the summary with links:
> >    - [net] Revert "net:tipc: Fix a double free in tipc_sk_mcast_rcv"
> >      https://git.kernel.org/netdev/net/c/75016891357a
> >
> > You are awesome, thank you!
> > --
> > Deet-doot-dot, I am a bot.
> > https://korg.docs.kernel.org/patchwork/pwbot.html
> >
> >
>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
