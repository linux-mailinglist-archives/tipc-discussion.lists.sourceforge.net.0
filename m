Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5609F17AEA3
	for <lists+tipc-discussion@lfdr.de>; Thu,  5 Mar 2020 20:01:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1j9vkM-00056I-J0; Thu, 05 Mar 2020 19:01:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1j9vkI-000564-DH
 for tipc-discussion@lists.sourceforge.net; Thu, 05 Mar 2020 19:01:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FCe6cEPIQVRUQ2zWYUigqQ4gna0iVW0GJFWKX0JtO+4=; b=cfBzmF7TWdq/W4kVL5d3ea2cy
 37ibasr7Xh10dzLqbi8CMB+G3CiVs/lf/gC/9vKUWsuYqsZiMXydOCeSZ6rDqjI6ZXdaIkTYhIghx
 AaUlOUGrVz+tSkGXj4CZxpEPq7s6prailOe1Yqp5EYylPq/wgC+z0s4pVYyUPk64YBt5A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FCe6cEPIQVRUQ2zWYUigqQ4gna0iVW0GJFWKX0JtO+4=; b=aGo0clP46FIXyMHJZLqAtQulbc
 F826olCJRp7ixseVOc9XWKJcsQ8RwlhWAHCT+Eo6BqZM2efccccTO5qGKv8fm4IWrImEQ0Jm8k+6w
 2cmabmBsUwS8MsWd4OzCVl29+BSAr/PGCoxL1YzCj4tkT/xasy4WEo7l9XKtmSanRms8=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1j9vkA-000zQZ-OO
 for tipc-discussion@lists.sourceforge.net; Thu, 05 Mar 2020 19:01:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583434868;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FCe6cEPIQVRUQ2zWYUigqQ4gna0iVW0GJFWKX0JtO+4=;
 b=YFWQqou8Lom4o/qLBw9JxbBg+ggY3WxOf2JD/mN9Q48pR80MiEjlGIfa+g/aI7Jel+Lucu
 Wb2wOA/6VxVFAJKqVAlA0/eYmDoCSprlZ9WRZtuzNiPg95mLLr16ZD6anSGOXfzqXISUr/
 f4cGi7Uq8O4Bpkon+jGLB9vj99hP9Cc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-368-UUneTxLjMtKX5Djsq4sMPg-1; Thu, 05 Mar 2020 14:01:05 -0500
X-MC-Unique: UUneTxLjMtKX5Djsq4sMPg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 158DE800D4E;
 Thu,  5 Mar 2020 19:01:04 +0000 (UTC)
Received: from jmaloy.remote.csb (ovpn-125-109.rdu2.redhat.com [10.10.125.109])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E2AC228998;
 Thu,  5 Mar 2020 19:01:00 +0000 (UTC)
To: "Xue, Ying" <Ying.Xue@windriver.com>, Hoang Le
 <hoang.h.le@dektech.com.au>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <20200221044859.5391-1-hoang.h.le@dektech.com.au>
 <BY5PR11MB3894EBF643E5EA21C7DE8A9084E20@BY5PR11MB3894.namprd11.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <647a95bc-2a5c-9183-b302-d6697ee17e29@redhat.com>
Date: Thu, 5 Mar 2020 14:01:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <BY5PR11MB3894EBF643E5EA21C7DE8A9084E20@BY5PR11MB3894.namprd11.prod.outlook.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 HTML_IMAGE_ONLY_20     BODY: HTML: images with 1600-2000 bytes of words
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1j9vkA-000zQZ-OO
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] [net-next] tipc: simplify trivial boolean
 return
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: Jon Maloy <jmaloy@redhat.com>

On 3/5/20 7:52 AM, Xue, Ying wrote:
> Acked-by: Ying Xue <ying.xue@windriver.com>
>
> -----Original Message-----
> From: Hoang Le [mailto:hoang.h.le@dektech.com.au]
> Sent: Friday, February 21, 2020 12:49 PM
> To: jmaloy@redhat.com; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net; Xue, Ying
> Subject: [net-next] tipc: simplify trivial boolean return
>
> Checking and returning 'true' boolean is useless as it will be
> returning at end of function
>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/msg.c | 3 ---
>   1 file changed, 3 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 0d515d20b056..4d0e0bdd997b 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -736,9 +736,6 @@ bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err)
>   	msg_set_destport(msg, dport);
>   	*err = TIPC_OK;
>   
> -	if (!skb_cloned(skb))
> -		return true;
> -
>   	return true;
>   }
>   

-- 

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
