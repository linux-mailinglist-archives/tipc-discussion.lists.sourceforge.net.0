Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC9B21AD09
	for <lists+tipc-discussion@lfdr.de>; Fri, 10 Jul 2020 04:26:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jtik0-00065r-JS; Fri, 10 Jul 2020 02:26:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jtijy-00065j-T5
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Jul 2020 02:26:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F/QXeAQOsoQD8NL9irQgu1sbGulZ7WIu0KVYQaTLeFo=; b=BE15M15swO6sydYv24pIv8JUL2
 Zb1jSeSUd0d4utJbQl0et94NYSYt8/2XNrTgTCCwh8LX4BHqaeEl7dN050i6P1MliO29OHEGI1UM6
 xi6e7ggtD8WAEMkfcdcxGYhWL2MM0lDbGlz1W47j9wYgXPp8fqn6oB6EO7NpZP19g3TY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F/QXeAQOsoQD8NL9irQgu1sbGulZ7WIu0KVYQaTLeFo=; b=Dj5WMZWVO4K00lQ/EC+8WpuMwe
 sqF6p4y2pNM7toUs8aWb+xHBgKky2fwZMgwuNesMPeHBfHKatRM56lk/+u2euIvbpK2vUqGaySuGB
 2KFLeDiZxQcHgMImr8mgLquiN9rnj91y0Y0LjO6l2RmmnW5rAp/YP0up2Z6wuMY5L0xo=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jtijt-001YAx-DI
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Jul 2020 02:26:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594347967;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=F/QXeAQOsoQD8NL9irQgu1sbGulZ7WIu0KVYQaTLeFo=;
 b=ith0DwD4cKUYHbm1mtTs0Xn+zdS2QIuSfO9SgoFaLbNE5wPUMyJ9DFu2JxesY43wsggUQ8
 DDTZjZufgjXP4hi81p35OW3WXyTPGWQ7RW+MkIp9jC7q3m057ld0dds44S4jnFwL7hm2M6
 Pf4nrNfvJwjDCQHoUA3e97CQdOdvphA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-318-dxFdVKTsNnGwt0-XhgWKbw-1; Thu, 09 Jul 2020 22:26:01 -0400
X-MC-Unique: dxFdVKTsNnGwt0-XhgWKbw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 856091902EA1;
 Fri, 10 Jul 2020 02:26:00 +0000 (UTC)
Received: from [10.10.120.78] (ovpn-120-78.rdu2.redhat.com [10.10.120.78])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D9DBA27DE7C;
 Fri, 10 Jul 2020 02:25:56 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net
References: <20200709042555.5424-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <dd1c18c8-c71a-0510-0ef3-ad6c14f3c42e@redhat.com>
Date: Thu, 9 Jul 2020 22:25:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200709042555.5424-1-hoang.h.le@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jtijt-001YAx-DI
Subject: Re: [tipc-discussion] [iproute2-next] tipc: fixed a compile warning
 in tipc/link.c
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



On 7/9/20 12:25 AM, Hoang Huu Le wrote:
> Fixes: 5027f233e35b ("tipc: add link broadcast get")
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>   tipc/link.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tipc/link.c b/tipc/link.c
> index ba77a20152ea..192736eaa154 100644
> --- a/tipc/link.c
> +++ b/tipc/link.c
> @@ -217,7 +217,7 @@ static int cmd_link_get_bcast_cb(const struct nlmsghdr *nlh, void *data)
>   		print_string(PRINT_ANY, "method", "%s", "AUTOSELECT");
>   		close_json_object();
>   		open_json_object(NULL);
> -		print_uint(PRINT_ANY, "ratio", " ratio:%u%\n",
> +		print_uint(PRINT_ANY, "ratio", " ratio:%u\n",
>   			   mnl_attr_get_u32(props[prop_ratio]));
>   		break;
>   	default:
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
