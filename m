Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9C17AEB56
	for <lists+tipc-discussion@lfdr.de>; Tue, 26 Sep 2023 13:19:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ql66M-0001Uq-4v;
	Tue, 26 Sep 2023 11:19:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1ql66K-0001Uh-Ru
 for tipc-discussion@lists.sourceforge.net;
 Tue, 26 Sep 2023 11:19:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w0Iyp1Fl1NBtWSyLWXxoQnKzRIJwB/IjhW80zLNFEwM=; b=UI4bMdRXRg0jb2ArKAqPUEWyFc
 9BfIHABn0MCAwNuvv+wBbAxs4rSCXI2p5wFw9WKIhoFwNTlQZECDHYrsI5pKhWZff8IHYqqd8jHcf
 Zj/oYCLIBUsZMfZGs3V+dtC6eJ8OUQ00xENr2IitpQw+CiOaH3efedYILtV33oiC4nFQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w0Iyp1Fl1NBtWSyLWXxoQnKzRIJwB/IjhW80zLNFEwM=; b=k8sdagt+c0OILigLBQGo8EsGvt
 NyQnOj/W0jmZ7ifw/490yzsV9kAQkksN2OzMLNQr9J2IEQsWzcjJyHiEElPpkvmIv5d/xLPaFNKR3
 DwG2yLImtzi8cntinbtz0Vb7I4vuke7ApQkdhtbAlXcBlJCuWC0DgTZajY8iW5NpdeSQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ql66E-0005z9-Kf for tipc-discussion@lists.sourceforge.net;
 Tue, 26 Sep 2023 11:19:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1695727164;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=w0Iyp1Fl1NBtWSyLWXxoQnKzRIJwB/IjhW80zLNFEwM=;
 b=J9ITmEWyakF7F0hsE2pfXMZwYuxIAxm9Co5xu/CwFdxB4W2OyqVnL8cj1Aa+/KuavU5Wvk
 w9uBFXLLsgNn0gcRTQ0dVwJYM9A9A0bQivePw6RXtBjjAYcgvX82qXudpme1+29C5oV/VH
 k0PIZLU817X5DfkqW6ZKgaa4XoeO5oA=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-346-lis5PfWIM-a_Ohw6DMYpKg-1; Tue, 26 Sep 2023 07:19:22 -0400
X-MC-Unique: lis5PfWIM-a_Ohw6DMYpKg-1
Received: by mail-yw1-f200.google.com with SMTP id
 00721157ae682-59f616f4660so102292917b3.1
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 26 Sep 2023 04:19:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695727162; x=1696331962;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=w0Iyp1Fl1NBtWSyLWXxoQnKzRIJwB/IjhW80zLNFEwM=;
 b=kp5+ACuB/+0yVcWVB+IZwx7u55kBHKXS/VZ1Goi38KHRiMXigvwDh/Ze/2Quqn5FsM
 IGCt7mOO3BD0eiPjze75WWLvL8l9flgYOuOCseteDbfVSpx2ICK3vxpKzqlI32g4w09k
 ojncnlzTAb3D6MyMaH60KXEGky7yyJuQA3DPNOSb19lb7Ez8q8VCCWAyJ9Y/j5pEs2wJ
 xkxWrDvoWz5X5fAw1mhR6W2J9uxJhNjn5D0CVuvw5O2KZFlnTlHZUdNeqEj0fudyEpm8
 sp08xO6m++5o97YC3TZN/OS1ddaQiHQJAdAWq3gLHDG/VgdkOuzw2hJxs/NBlryKVpF8
 /1Fg==
X-Gm-Message-State: AOJu0YzovDdBDtqCcMjEHuIS0U7STQFQZhDi6pgjEJuYzOwM+QeQuCqQ
 UMJStyzi9np95ALUf5VOUI+pe3TKyAS4R1Fh+e/hjm5PPbBWeXmYTfG15CxRk75J0OfpnTHjoff
 lCIo0KBCwfm7QlH9N9pnXDYG2szrPxPKR4bB0
X-Received: by 2002:a0d:ce07:0:b0:59b:1f6d:1958 with SMTP id
 q7-20020a0dce07000000b0059b1f6d1958mr8255449ywd.46.1695727162233; 
 Tue, 26 Sep 2023 04:19:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEErMMOQnWajQcblaBvwvLcA3K0dGeREYTIb/E0Vgm3POYB6pB5b9/qc0fjxmCGqtU+lkGmaw==
X-Received: by 2002:a0d:ce07:0:b0:59b:1f6d:1958 with SMTP id
 q7-20020a0dce07000000b0059b1f6d1958mr8255441ywd.46.1695727161946; 
 Tue, 26 Sep 2023 04:19:21 -0700 (PDT)
Received: from [10.0.0.97] ([24.225.234.80]) by smtp.gmail.com with ESMTPSA id
 l5-20020a37f505000000b0076f21383b6csm4607490qkk.112.2023.09.26.04.19.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Sep 2023 04:19:21 -0700 (PDT)
Message-ID: <a9f6e851-5f41-a114-a7f8-493c639c664d@redhat.com>
Date: Tue, 26 Sep 2023 07:19:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Shigeru Yoshida <syoshida@redhat.com>, ying.xue@windriver.com
References: <20230924060325.3779150-1-syoshida@redhat.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20230924060325.3779150-1-syoshida@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2023-09-24 02:03, Shigeru Yoshida wrote: > syzbot reported
 the following uninit-value access issue: > >
 =====================================================
 > BUG: KMSAN: uninit-value in strlen li [...] 
 Content analysis details:   (-1.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ql66E-0005z9-Kf
Subject: Re: [tipc-discussion] [PATCH] tipc: Fix uninit-value access in
 tipc_nl_node_reset_link_stats()
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
Cc: netdev@vger.kernel.org,
 syzbot+5138ca807af9d2b42574@syzkaller.appspotmail.com,
 tipc-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 2023-09-24 02:03, Shigeru Yoshida wrote:
> syzbot reported the following uninit-value access issue:
>
> =====================================================
> BUG: KMSAN: uninit-value in strlen lib/string.c:418 [inline]
> BUG: KMSAN: uninit-value in strstr+0xb8/0x2f0 lib/string.c:756
>   strlen lib/string.c:418 [inline]
>   strstr+0xb8/0x2f0 lib/string.c:756
>   tipc_nl_node_reset_link_stats+0x3ea/0xb50 net/tipc/node.c:2595
>   genl_family_rcv_msg_doit net/netlink/genetlink.c:971 [inline]
>   genl_family_rcv_msg net/netlink/genetlink.c:1051 [inline]
>   genl_rcv_msg+0x11ec/0x1290 net/netlink/genetlink.c:1066
>   netlink_rcv_skb+0x371/0x650 net/netlink/af_netlink.c:2545
>   genl_rcv+0x40/0x60 net/netlink/genetlink.c:1075
>   netlink_unicast_kernel net/netlink/af_netlink.c:1342 [inline]
>   netlink_unicast+0xf47/0x1250 net/netlink/af_netlink.c:1368
>   netlink_sendmsg+0x1238/0x13d0 net/netlink/af_netlink.c:1910
>   sock_sendmsg_nosec net/socket.c:730 [inline]
>   sock_sendmsg net/socket.c:753 [inline]
>   ____sys_sendmsg+0x9c2/0xd60 net/socket.c:2541
>   ___sys_sendmsg+0x28d/0x3c0 net/socket.c:2595
>   __sys_sendmsg net/socket.c:2624 [inline]
>   __do_sys_sendmsg net/socket.c:2633 [inline]
>   __se_sys_sendmsg net/socket.c:2631 [inline]
>   __x64_sys_sendmsg+0x307/0x490 net/socket.c:2631
>   do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>   do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
>   entry_SYSCALL_64_after_hwframe+0x63/0xcd
>
> Uninit was created at:
>   slab_post_alloc_hook+0x12f/0xb70 mm/slab.h:767
>   slab_alloc_node mm/slub.c:3478 [inline]
>   kmem_cache_alloc_node+0x577/0xa80 mm/slub.c:3523
>   kmalloc_reserve+0x13d/0x4a0 net/core/skbuff.c:559
>   __alloc_skb+0x318/0x740 net/core/skbuff.c:650
>   alloc_skb include/linux/skbuff.h:1286 [inline]
>   netlink_alloc_large_skb net/netlink/af_netlink.c:1214 [inline]
>   netlink_sendmsg+0xb34/0x13d0 net/netlink/af_netlink.c:1885
>   sock_sendmsg_nosec net/socket.c:730 [inline]
>   sock_sendmsg net/socket.c:753 [inline]
>   ____sys_sendmsg+0x9c2/0xd60 net/socket.c:2541
>   ___sys_sendmsg+0x28d/0x3c0 net/socket.c:2595
>   __sys_sendmsg net/socket.c:2624 [inline]
>   __do_sys_sendmsg net/socket.c:2633 [inline]
>   __se_sys_sendmsg net/socket.c:2631 [inline]
>   __x64_sys_sendmsg+0x307/0x490 net/socket.c:2631
>   do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>   do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
>   entry_SYSCALL_64_after_hwframe+0x63/0xcd
>
> Link names must be null-terminated strings. If a link name which is not
> null-terminated is passed through netlink, strstr() and similar functions
> can cause buffer overrun. This causes the above issue.
>
> This patch fixes this issue by returning -EINVAL if a non-null-terminated
> link name is passed.
>
> Fixes: ae36342b50a9 ("tipc: add link stat reset to new netlink api")
> Reported-and-tested-by: syzbot+5138ca807af9d2b42574@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=5138ca807af9d2b42574
> Signed-off-by: Shigeru Yoshida <syoshida@redhat.com>
> ---
>   net/tipc/node.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 3105abe97bb9..f167bdafc034 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -2586,6 +2586,10 @@ int tipc_nl_node_reset_link_stats(struct sk_buff *skb, struct genl_info *info)
>   
>   	link_name = nla_data(attrs[TIPC_NLA_LINK_NAME]);
>   
> +	if (link_name[strnlen(link_name,
> +			      nla_len(attrs[TIPC_NLA_LINK_NAME]))] != '\0')
> +		return -EINVAL;
> +
>   	err = -EINVAL;
>   	if (!strcmp(link_name, tipc_bclink_name)) {
>   		err = tipc_bclink_reset_stats(net, tipc_bc_sndlink(net));
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
