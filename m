Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D3028C551
	for <lists+tipc-discussion@lfdr.de>; Tue, 13 Oct 2020 01:40:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kS7QC-00082U-4m; Mon, 12 Oct 2020 23:40:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kS7QA-00082G-P9
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Oct 2020 23:40:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IXYh2b71/+JzlW+bGTRhQG19j7368GQP10jUXBmaUFo=; b=dVR+i02F3lNvj+t2N5zyLAt4IE
 r87CD2bhlr1jf9i/8hvqCbTK4FoKW4usDosZcFSMqQ6dqSAuYvEOYji730wXY2Re6JSclrRgnak5x
 kKLDFo3311I5YhCsu4cpWGwwIJ9+5toh5jP8tKKFEnwLkGNVi3YBDIyl8mhdEDlMrWTI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IXYh2b71/+JzlW+bGTRhQG19j7368GQP10jUXBmaUFo=; b=CXN1hhiDu6Ck149mmbsuRjXnFJ
 RN4VqnEByS5gerSWNPZ7SAKoYJIIvyujvO2CCxRk0fO2wzsBKpUdKQEaOVTOOHmnMYb14p/9kULdt
 05ry9Sf5L9z/v8zr+fPmHH2TxsJO84eiekRc1GqjHSSEmsesS069aJ6z7e2UMdJvGNxY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kS7Q1-00Clza-Ey
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Oct 2020 23:40:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602545987;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IXYh2b71/+JzlW+bGTRhQG19j7368GQP10jUXBmaUFo=;
 b=Kt/q8wuiY2kzUclXIZqQ6ON/7N2xmnCpAiPXkSZzB2nzkBZ+S4+3Qy+hRHxBum3dTsr9Oz
 WCx8EzKBL7yU5dkOqczt8dnZEoopkqCh+fIQp9o3Nh/jetb7FjED7obo3i2XnbG4uB94Db
 +lwIlbmtdMz0uZD8ijzWNsvmsCAh7JU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-345-K1rpCTZTMKe0KP0XH-VOew-1; Mon, 12 Oct 2020 19:39:46 -0400
X-MC-Unique: K1rpCTZTMKe0KP0XH-VOew-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C01FE86ABD1;
 Mon, 12 Oct 2020 23:39:44 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 013F95C22B;
 Mon, 12 Oct 2020 23:39:43 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com
References: <20201001065146.70056-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <126771c5-7b0d-b42f-140f-8cc2a808ba36@redhat.com>
Date: Mon, 12 Oct 2020 19:39:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201001065146.70056-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kS7Q1-00Clza-Ey
Subject: Re: [tipc-discussion] [net-next] tipc: re-configure queue limit for
 broadcast link
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



On 10/1/20 2:51 AM, Hoang Huu Le wrote:
> The queue limit of the broadcast link is being calculated base on initial
> MTU. However, when MTU value changed (e.g manual changing MTU on NIC device,
> MTU negotiation etc.,) we do not re-calculate queue limit. This gives
> throughput does not reflect with the change.
>
> So fix it by calling the function to re-calculate queue limit of the
> broadcast link.
>
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/bcast.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index abac9443b4d9..bc566b304571 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -108,6 +108,7 @@ static void tipc_bcbase_select_primary(struct net *net)
>   {
>   	struct tipc_bc_base *bb = tipc_bc_base(net);
>   	int all_dests =  tipc_link_bc_peers(bb->link);
> +	int max_win = tipc_link_max_win(bb->link);
>   	int i, mtu, prim;
>   
>   	bb->primary_bearer = INVALID_BEARER_ID;
> @@ -121,8 +122,11 @@ static void tipc_bcbase_select_primary(struct net *net)
>   			continue;
>   
>   		mtu = tipc_bearer_mtu(net, i);
> -		if (mtu < tipc_link_mtu(bb->link))
> +		if (mtu < tipc_link_mtu(bb->link)) {
>   			tipc_link_set_mtu(bb->link, mtu);
> +			tipc_link_set_queue_limits(bb->link, max_win,
> +						   max_win);
> +		}
>   		bb->bcast_support &= tipc_bearer_bcast_support(net, i);
>   		if (bb->dests[i] < all_dests)
>   			continue;
An obvious bug that explains a lot, and needed to be fixed. Thanks.
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
