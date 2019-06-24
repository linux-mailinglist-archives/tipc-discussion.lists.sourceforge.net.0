Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 244904FF2C
	for <lists+tipc-discussion@lfdr.de>; Mon, 24 Jun 2019 04:16:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hfEWN-0001y3-5W; Mon, 24 Jun 2019 02:15:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1hfEWL-0001xn-LZ
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 02:15:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0sAe/aO/6Xl20/rCp175Zayv/xP5zE7ZYIpdEhBdOJk=; b=IDoILc/ABHrvRkseAmkhWLtsmS
 bkCxITe6078++lk5YAib3WZ92Sgq3uUtpL0yPxvAmP8OHbtVRO4ocmb0Hv5C8LooKoXdFwSMkWLcd
 GfkGjqZczdTbrToBAUKX7UroaepxsmmnW9znsw8cXU2frWWE8PXH7JW+hLqq8ki0CEiA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0sAe/aO/6Xl20/rCp175Zayv/xP5zE7ZYIpdEhBdOJk=; b=QHapkEvwhSA5WSlubfeYXdueBm
 2aqLn+TEAWsg5cg8RgPeWHMwLOyESwjlW/cvFigdniFyaAIN0Y5uHeJbT5Vpx9rCwJ58CGX6qL1qV
 7BWQ95I3ddqZPMc4bEYbuObTusXaWvc8Zn9xe8xVXA+AAVGdFMMgTVFfou8Tz2q5O3No=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfEWR-007AMs-3e
 for tipc-discussion@lists.sourceforge.net; Mon, 24 Jun 2019 02:15:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 3E6CA45871;
 Mon, 24 Jun 2019 12:15:46 +1000 (AEST)
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nOF48eCrZNho; Mon, 24 Jun 2019 12:15:46 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 0761F45873;
 Mon, 24 Jun 2019 12:15:45 +1000 (AEST)
Received: from VNLAP298VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 3738645871;
 Mon, 24 Jun 2019 12:15:44 +1000 (AEST)
From: "Hoang Le" <hoang.h.le@dektech.com.au>
To: "'David Ahern'" <dsahern@gmail.com>, <jon.maloy@ericsson.com>,
 <maloy@donjonn.com>, <ying.xue@windriver.com>, <netdev@vger.kernel.org>,
 <tipc-discussion@lists.sourceforge.net>
References: <20190613080719.22081-1-hoang.h.le@dektech.com.au>
 <d4bef444-f009-5415-f27d-8cfde945ddab@gmail.com>
In-Reply-To: <d4bef444-f009-5415-f27d-8cfde945ddab@gmail.com>
Date: Mon, 24 Jun 2019 09:15:48 +0700
Message-ID: <00d101d52a32$bf483710$3dd8a530$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNM7RQ84gezk4aPz9SQzQv6igwFoQICW/2Zo6p2INA=
Content-Language: en-us
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hfEWR-007AMs-3e
Subject: Re: [tipc-discussion] [iproute2-next v5] tipc: support interface
 name when activating UDP bearer
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

Thanks David. I will update code change as your comments.

For the item:
> +	/* remove from cache */
> +	ll_drop_by_index(ifr.ifr_ifindex);

why the call to ll_drop_by_index? doing so means that ifindex is looked
up again.

[Hoang]
> +	ifr.ifr_ifindex = ll_name_to_index(ifr.ifr_name);
This function stored an entry ll_cache in hash map table. We have to call this function to prevent memory leaked. 

Regards,
Hoang
-----Original Message-----
From: David Ahern <dsahern@gmail.com> 
Sent: Saturday, June 22, 2019 5:50 AM
To: Hoang Le <hoang.h.le@dektech.com.au>; dsahern@gmail.com; jon.maloy@ericsson.com; maloy@donjonn.com; ying.xue@windriver.com; netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net
Subject: Re: [iproute2-next v5] tipc: support interface name when activating UDP bearer

On 6/13/19 2:07 AM, Hoang Le wrote:
> @@ -119,6 +121,74 @@ static int generate_multicast(short af, char *buf, int bufsize)
>  	return 0;
>  }
>  
> +static struct ifreq ifr = {};

you don't need to initialize globals, but you could pass a a struct as
the arg to the filter here which is both the addr buffer and the ifindex
of interest.

> +static int nl_dump_addr_filter(struct nlmsghdr *nlh, void *arg)
> +{
> +	struct ifaddrmsg *ifa = NLMSG_DATA(nlh);
> +	char *r_addr = (char *)arg;
> +	int len = nlh->nlmsg_len;
> +	struct rtattr *addr_attr;
> +
> +	if (ifr.ifr_ifindex != ifa->ifa_index)
> +		return 0;
> +
> +	if (strlen(r_addr) > 0)
> +		return 1;
> +
> +	addr_attr = parse_rtattr_one(IFA_ADDRESS, IFA_RTA(ifa),
> +				     len - NLMSG_LENGTH(sizeof(*ifa)));
> +	if (!addr_attr)
> +		return 0;
> +
> +	if (ifa->ifa_family == AF_INET) {
> +		struct sockaddr_in ip4addr;
> +		memcpy(&ip4addr.sin_addr, RTA_DATA(addr_attr),
> +		       sizeof(struct in_addr));
> +		if (inet_ntop(AF_INET, &ip4addr.sin_addr, r_addr,
> +			      INET_ADDRSTRLEN) == NULL)
> +			return 0;
> +	} else if (ifa->ifa_family == AF_INET6) {
> +		struct sockaddr_in6 ip6addr;
> +		memcpy(&ip6addr.sin6_addr, RTA_DATA(addr_attr),
> +		       sizeof(struct in6_addr));
> +		if (inet_ntop(AF_INET6, &ip6addr.sin6_addr, r_addr,
> +			      INET6_ADDRSTRLEN) == NULL)
> +			return 0;
> +	}
> +	return 1;
> +}
> +
> +static int cmd_bearer_validate_and_get_addr(const char *name, char *r_addr)
> +{
> +	struct rtnl_handle rth ={ .fd = -1 };

space between '={'

> +
> +	memset(&ifr, 0, sizeof(ifr));
> +	if (!name || !r_addr || get_ifname(ifr.ifr_name, name))
> +		return 0;
> +
> +	ifr.ifr_ifindex = ll_name_to_index(ifr.ifr_name);
> +	if (!ifr.ifr_ifindex)
> +		return 0;
> +
> +	/* remove from cache */
> +	ll_drop_by_index(ifr.ifr_ifindex);

why the call to ll_drop_by_index? doing so means that ifindex is looked
up again.

> +
> +	if (rtnl_open(&rth, 0) < 0)
> +		return 0;
> +
> +	if (rtnl_addrdump_req(&rth, AF_UNSPEC, 0) < 0) {

If you pass a filter here to set ifa_index, this command on newer
kernels will be much more efficient. See ipaddr_dump_filter.


> +		rtnl_close(&rth);
> +		return 0;
> +	}
> +
> +	if (rtnl_dump_filter(&rth, nl_dump_addr_filter, r_addr) < 0) {
> +		rtnl_close(&rth);
> +		return 0;
> +	}
> +	rtnl_close(&rth);
> +	return 1;
> +}

it would better to have 1 exit with the rtnl_close and return rc based
on above.



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
