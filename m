Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5980A565968
	for <lists+tipc-discussion@lfdr.de>; Mon,  4 Jul 2022 17:08:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1o8Ngg-00088a-Q4; Mon, 04 Jul 2022 15:08:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1o8Ngf-00088S-JZ
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Jul 2022 15:08:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eelsJmC8XxsMJAjYmudOwiEkl8d3+Vk0tp966sJNp1w=; b=dqwVHEtoeAbyBbOdtMy5Dl5tJv
 dNHn+z1iN4U4j2N4AwZmEc5+UZwuCkmWrqj+viaHxPBaxEUm6Fp//6KQg9aVBWY/9FhX456PrAU0y
 SQEhkS1W5o3pSvgzxZ4YUk2amGOaJ5QvcChydTitHnjlYdZ6y7W1XqWPaPD2PIppFuT4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eelsJmC8XxsMJAjYmudOwiEkl8d3+Vk0tp966sJNp1w=; b=JrDgezjMSYifRyHkFOr6WWwCm0
 WBj3H8JmNEi9lY9IpW+ILI/8VHF/DU6StjbljgN7pcfcKi8vU6qSadhCGT9XvzXnoIt0mb0x9ncd1
 cFujTxV3Wl+lMy8GmdraGHeM47l+1ICQMzSL8a3v5dQr2LTXRn5NJMhbv7XaP/56iAXY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o8Ngc-0003ke-FL
 for tipc-discussion@lists.sourceforge.net; Mon, 04 Jul 2022 15:08:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1656947304;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eelsJmC8XxsMJAjYmudOwiEkl8d3+Vk0tp966sJNp1w=;
 b=cIVPhrmbAG6BxRaqgSiiW2/Z51msd294nMilo7wsaqDpYG3xv2tojzkYp6/tAlSdfYw+qP
 f5SpNwCm2RAkdxdyj6brKbb+RG8dRYOLslFOiPlQdRr2Yu6FxIdBogbaYds2TqOxJ9Ve67
 7FZikzBV1jX1rUpX4LF7PNtqvk768ps=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-626-wEoJvdJrOPaFB06sOBK6nA-1; Mon, 04 Jul 2022 11:08:23 -0400
X-MC-Unique: wEoJvdJrOPaFB06sOBK6nA-1
Received: by mail-qt1-f197.google.com with SMTP id
 c22-20020ac81116000000b0031d25923ea8so6110007qtj.17
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 04 Jul 2022 08:08:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=eelsJmC8XxsMJAjYmudOwiEkl8d3+Vk0tp966sJNp1w=;
 b=HfazKcEJf2zSsn+S1qTVAcSiO3yItSzSExUhLeCPbvQDeg0HxvCdZYB7cvd02usHuu
 8o7snOHAcNI7FJXj3IrHHInggkCHVKu6MAyEkdRat0jIkdoGtEnlEaeyo+5I12gJD9r+
 WnZS1uRvv5WNPIkOSpKcDhNIolwkuMAO5Zts/SxB2XhORkEfSJgJRIMJ9G8lXxu2CI8K
 tRZIxyOCj0PTwpqanHX5HpaEsAWw2U795b8NIazCOYTSln4YEl6Y+y7SNLv0VCVIyD59
 rwxZmaW2bG8g+lwOS0/c0xchsurynMDW5BXfJyTOqqloMX3TE83xelYCjRrQCiA9xwQB
 FOeg==
X-Gm-Message-State: AJIora/9bKoVfhhQhTJc9eC7Zya1kB38Qg1jvVXNzEo928D50lRukMMu
 RhXbjm+0mXHAwLlTR4WxYfQRA6Gn99aGxeSjLThH8E3cDH5DgOBRmFLZfFTx2uzbqLM10AtidRb
 yvXZ6/TuN1Mlw776LxO0+FUwSZ3X6Ycsm5xaU
X-Received: by 2002:ac8:5c94:0:b0:31b:899:3063 with SMTP id
 r20-20020ac85c94000000b0031b08993063mr24241960qta.153.1656947302295; 
 Mon, 04 Jul 2022 08:08:22 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1tlpQwokGr0+NqM72R3/YV3lISqa6Hphw23xzeH98bN6YALdPLMuHyQdcHVf1jJAQZL5Cb1tQ==
X-Received: by 2002:ac8:5c94:0:b0:31b:899:3063 with SMTP id
 r20-20020ac85c94000000b0031b08993063mr24241931qta.153.1656947302025; 
 Mon, 04 Jul 2022 08:08:22 -0700 (PDT)
Received: from [10.0.0.96] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 bv27-20020a05622a0a1b00b0031636caa40bsm14777154qtb.65.2022.07.04.08.08.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Jul 2022 08:08:21 -0700 (PDT)
Message-ID: <6d69022b-5d2b-8aa3-1020-0eb81dd41688@redhat.com>
Date: Mon, 4 Jul 2022 11:08:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
To: Hoang Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tung.q.nguyen@dektech.com.au,
 tipc-discussion@lists.sourceforge.net
References: <20220701061654.127547-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20220701061654.127547-1-hoang.h.le@dektech.com.au>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/1/22 02:16, Hoang Le wrote: > syzbot found the following
 issue on: > ==================================================================
 > BUG: KMSAN: uninit-value in strlen lib/string.c:495 [inli [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o8Ngc-0003ke-FL
Subject: Re: [tipc-discussion] [PATCH] tipc: fix uninit-value in
 tipc_nl_node_reset_link_stats
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
Cc: syzbot+a73d24a22eeeebe5f244@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 7/1/22 02:16, Hoang Le wrote:
> syzbot found the following issue on:
> ==================================================================
> BUG: KMSAN: uninit-value in strlen lib/string.c:495 [inline]
> BUG: KMSAN: uninit-value in strstr+0xb4/0x2e0 lib/string.c:840
>   strlen lib/string.c:495 [inline]
>   strstr+0xb4/0x2e0 lib/string.c:840
>   tipc_nl_node_reset_link_stats+0x41e/0xba0 net/tipc/node.c:2582
>   genl_family_rcv_msg_doit net/netlink/genetlink.c:731 [inline]
>   genl_family_rcv_msg net/netlink/genetlink.c:775 [inline]
>   genl_rcv_msg+0x103f/0x1260 net/netlink/genetlink.c:792
>   netlink_rcv_skb+0x3a5/0x6c0 net/netlink/af_netlink.c:2501
>   genl_rcv+0x3c/0x50 net/netlink/genetlink.c:803
>   netlink_unicast_kernel net/netlink/af_netlink.c:1319 [inline]
>   netlink_unicast+0xf3b/0x1270 net/netlink/af_netlink.c:1345
>   netlink_sendmsg+0x1288/0x1440 net/netlink/af_netlink.c:1921
>   sock_sendmsg_nosec net/socket.c:714 [inline]
>   sock_sendmsg net/socket.c:734 [inline]
>   ____sys_sendmsg+0xabc/0xe90 net/socket.c:2492
>   ___sys_sendmsg+0x2a5/0x350 net/socket.c:2546
>   __sys_sendmsg net/socket.c:2575 [inline]
>   __do_sys_sendmsg net/socket.c:2584 [inline]
>   __se_sys_sendmsg net/socket.c:2582 [inline]
>   __x64_sys_sendmsg+0x367/0x540 net/socket.c:2582
>   do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>   do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
>   entry_SYSCALL_64_after_hwframe+0x46/0xb0
> ==================================================================
>
> This is because link name string is not validated before it's used
> in calling strstr() and strlen().
>
> Reported-by: syzbot+a73d24a22eeeebe5f244@syzkaller.appspotmail.com
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/node.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index b48d97cbbe29..23419a599471 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -2561,6 +2561,7 @@ int tipc_nl_node_reset_link_stats(struct sk_buff *skb, struct genl_info *info)
>   	struct net *net = sock_net(skb->sk);
>   	struct tipc_net *tn = tipc_net(net);
>   	struct tipc_link_entry *le;
> +	int len;
>   
>   	if (!info->attrs[TIPC_NLA_LINK])
>   		return -EINVAL;
> @@ -2574,7 +2575,14 @@ int tipc_nl_node_reset_link_stats(struct sk_buff *skb, struct genl_info *info)
>   	if (!attrs[TIPC_NLA_LINK_NAME])
>   		return -EINVAL;
>   
> +	len = nla_len(attrs[TIPC_NLA_LINK_NAME]);
> +	if (len <= 0)
> +		return -EINVAL;
> +
>   	link_name = nla_data(attrs[TIPC_NLA_LINK_NAME]);
> +	len = min_t(int, len, TIPC_MAX_LINK_NAME);
> +	if (!memchr(link_name, '\0', len))
> +		return -EINVAL;
>   
>   	err = -EINVAL;
>   	if (!strcmp(link_name, tipc_bclink_name)) {
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
