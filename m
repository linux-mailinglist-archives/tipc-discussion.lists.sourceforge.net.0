Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 086B9F1156
	for <lists+tipc-discussion@lfdr.de>; Wed,  6 Nov 2019 09:43:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iSGu3-000727-R0; Wed, 06 Nov 2019 08:42:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iSGu2-00071a-3x
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 08:42:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RnhXaT/fY1RyATKxyfrYiieE9oaV9NloXz5p5fn/QIQ=; b=mznbxU0mO8elbEm9k0EAVp423G
 LFugMrH1sVYGvXuPyTQs0VZ6VLw4tbi0ppXMSyphS3L0SCo5srhLMSCZDC9x6ndzyRqxE8Yuhtk0c
 JuKcvH+yc1OLn/w4kctqHC35NYH6YDrofOEvUuOlC9QP09VYkQt3Zc9+4rn6zBW2b03A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RnhXaT/fY1RyATKxyfrYiieE9oaV9NloXz5p5fn/QIQ=; b=KCuRpJNHSOBeDMSI6SqQSQ6Sg1
 7lWI0OB+QL9eHii60UiAlGerAJu3fWilj8HRXFWcuWZbC0dvziKbWz5sFh56gkro7Y5YJWIPhMqx0
 5+jZKtLnfIrfc9LncPFbAW08Yd6id65/lyxi/IZn/qswo6R3HcCxG3lr3jIACxCC3z3o=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iSGu0-002c6a-OY
 for tipc-discussion@lists.sourceforge.net; Wed, 06 Nov 2019 08:42:58 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xA68gcCv005950
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Wed, 6 Nov 2019 00:42:38 -0800 (PST)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 6 Nov
 2019 00:42:38 -0800
To: Tuong Lien <tuong.t.lien@dektech.com.au>,
 <tipc-discussion@lists.sourceforge.net>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>
References: <20191105105056.15779-1-tuong.t.lien@dektech.com.au>
 <20191105105056.15779-5-tuong.t.lien@dektech.com.au>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <8d08c853-430f-21de-1d3f-43428fdb9faa@windriver.com>
Date: Wed, 6 Nov 2019 16:41:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105105056.15779-5-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iSGu0-002c6a-OY
Subject: Re: [tipc-discussion] [PATCH v2 4/5] tipc: introduce TIPC
 encryption & authentication
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 11/5/19 6:50 PM, Tuong Lien wrote:
>  void tipc_bearer_xmit(struct net *net, u32 bearer_id,
>  		      struct sk_buff_head *xmitq,
> -		      struct tipc_media_addr *dst)
> +#ifdef CONFIG_TIPC_CRYPTO
> +		      struct tipc_media_addr *dst,
> +		      struct tipc_node *__dnode
> +#else
> +		      struct tipc_media_addr *dst
> +#endif
> +		      )

To make code simpler, I think we can directly add one new parameter (ie,
__dnode) no matter whether CONFIG_TIPC_CRYPTO is enabled or not.

When CONFIG_TIPC_CRYPTO is disabled, we just pass NULL to "__dnode"
parameter. As a consequence, we don't need to use CONFIG_TIPC_CRYPTO
config to separate the two different situations of whether
CONFIG_TIPC_CRYPTO is enabled or not whenever tipc_bearer_xmit() is called.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
