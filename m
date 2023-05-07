Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A791D6F9C07
	for <lists+tipc-discussion@lfdr.de>; Sun,  7 May 2023 23:46:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pvmDN-0001RQ-Dt;
	Sun, 07 May 2023 21:46:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1pvmDM-0001RK-99
 for tipc-discussion@lists.sourceforge.net;
 Sun, 07 May 2023 21:46:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lRVbumtTL0+M3sbUq4/VAYogRDf43BEUeshB5w8XYBM=; b=MVVyfnh+D1tB/wBNtOClFo3oQJ
 yjPCmt0KWrc1YoXPNQuPApC/ljPJCwEYUhdN089XeBWEnkXJC1duK1W7nPoQETCG+lt0YwjYC/15l
 YGS5vdHp5Ko7s9UVBElDcYdUTFwQunD2pD3CJHY4VT29oHgHpOAxLeaoOx51hxixOL2c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lRVbumtTL0+M3sbUq4/VAYogRDf43BEUeshB5w8XYBM=; b=XuN53iaznw9aSA0YqfrpPG9mt5
 2D9TcyyRroihn3icLNZZVpvQ96HtGWk3vzvw6Oe7e49u6fb2sYCa7KFVBb4QLkyBQ82VrUjhjv+4w
 EXD6fTH2QhsNpB2QZ2vOV0R1KKan8eGTS8s3B+8q4GF7A08lISUImFg3ZrJOQLmGTAPA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pvmDD-001Dmw-6v for tipc-discussion@lists.sourceforge.net;
 Sun, 07 May 2023 21:46:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1683495988;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lRVbumtTL0+M3sbUq4/VAYogRDf43BEUeshB5w8XYBM=;
 b=cY8dX4xMtyEfiWbPl1kEWIFChpcknXLNUJnbAGOd5+yKLivQpM3mPMRCQo9DpdTtaNM2hT
 h0PQqMmRbPFBA38a4fHCCfzE56so+8jbBn+709u6jKQOQSE4xyJUw9H6zXtXQju+5wU0U7
 D812CF1bt7rZO1mDPz3FeYKDHmhDmz0=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-454-JuswNwLSMOuB0SghQz09Jg-1; Sun, 07 May 2023 17:46:27 -0400
X-MC-Unique: JuswNwLSMOuB0SghQz09Jg-1
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-3f38b6a2682so3762281cf.1
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 07 May 2023 14:46:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683495987; x=1686087987;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lRVbumtTL0+M3sbUq4/VAYogRDf43BEUeshB5w8XYBM=;
 b=N6LSBkNRwcjMScEO8YbELLpBdMgBEidZm5nR05c3b1f8oO28oySPjBbaOabXHcCOW3
 TZZsM8mww+R7YCe3gqybwSRAgArBE/BGyfXA2FhRkeyFU8LGg7S+OsYCXU7AE9FzJWGe
 TXHpoBYsPnXnG5p3JSjuxrbv3zVWBowR6fJUQedXjdbZQE4rptG5uNIdS2hLsAnEV37X
 jf4xRJG4FWfD4uXWAH/FMXdH0UPzzVQ/i3tsWLFTWUQ7qL8X+cBfRWXM4DFdGVwxKbeU
 YJt5AXWPUSACz5R12CYrLdrd7MfzlNGcwHPQ10UrNqFXpoS+ExLgZn6p3PmmswlA8Uox
 Q75Q==
X-Gm-Message-State: AC+VfDxtvavdupYyjdcqR9b+gVuOv+q+pcSm2gTUWyZwP1xk7J62CtpS
 Yhy6xrQcKlkgKspR8STxmiBCthkFXeEWLpBxny8gSWGCCfD3hAYFafdvlwfs5rUCAolQT7Q5znS
 oAKpTD/AWFDxI4m9Vu1LtecpbpvppURQWpnfk
X-Received: by 2002:a05:622a:614:b0:3f2:1c13:b5a8 with SMTP id
 z20-20020a05622a061400b003f21c13b5a8mr12283823qta.50.1683495986868; 
 Sun, 07 May 2023 14:46:26 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6f1o7fGePdhoGCZMVr1BKaQq2PNyBO7dAFIrbNmxOuPV6lWDsPAZKGYxijqvcBGTJe4licjg==
X-Received: by 2002:a05:622a:614:b0:3f2:1c13:b5a8 with SMTP id
 z20-20020a05622a061400b003f21c13b5a8mr12283807qta.50.1683495986598; 
 Sun, 07 May 2023 14:46:26 -0700 (PDT)
Received: from [10.0.0.97] ([24.225.234.80]) by smtp.gmail.com with ESMTPSA id
 j14-20020ac874ce000000b003e89e2b3c23sm2455384qtr.58.2023.05.07.14.46.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 May 2023 14:46:26 -0700 (PDT)
Message-ID: <74fbee87-2d73-1fde-ee3b-97e8c7382d01@redhat.com>
Date: Sun, 7 May 2023 17:46:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Xin Long <lucien.xin@gmail.com>, network dev <netdev@vger.kernel.org>,
 tipc-discussion@lists.sourceforge.net
References: <cover.1683065352.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <cover.1683065352.git.lucien.xin@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -4.7 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2023-05-02 18:13, Xin Long wrote: > This patchset fixes
 a crash caused by a too small MTU carried in the > activate msg. Note that
 as such malicious packet does not exist in > the normal env, the f [...] 
 Content analysis details:   (-4.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -4.3 NICE_REPLY_A           Looks like a legit reply (A)
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pvmDD-001Dmw-6v
Subject: Re: [tipc-discussion] [PATCHv2 net 0/3] tipc: fix the mtu update in
 link mtu negotiation
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
Cc: kuba@kernel.org, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 2023-05-02 18:13, Xin Long wrote:
> This patchset fixes a crash caused by a too small MTU carried in the
> activate msg. Note that as such malicious packet does not exist in
> the normal env, the fix won't break any application
>
> The 1st patch introduces a function to calculate the minimum MTU for
> the bearer, and the 2nd patch fixes the crash with this helper. While
> at it, the 3rd patch fixes the udp bearer mtu update by netlink with
> this helper.
>
> Xin Long (3):
>    tipc: add tipc_bearer_min_mtu to calculate min mtu
>    tipc: do not update mtu if msg_max is too small in mtu negotiation
>    tipc: check the bearer min mtu properly when setting it by netlink
>
>   net/tipc/bearer.c    | 17 +++++++++++++++--
>   net/tipc/bearer.h    |  3 +++
>   net/tipc/link.c      |  9 ++++++---
>   net/tipc/udp_media.c |  5 +++--
>   4 files changed, 27 insertions(+), 7 deletions(-)
>
Series
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
