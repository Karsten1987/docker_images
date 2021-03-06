%YAML 1.1
# ROS2 Dockerfile database
---
images:
    nightly:
        base_image: @(os_name):@(os_code_name)
        maintainer_name: @(maintainer_name)
        template_name: docker_images_ros2/nightly/create_ros_image.Dockerfile.em
        entrypoint_name: docker_images_ros2/nightly/ros_entrypoint.sh
        pip3_install:
            - argcomplete
        template_packages:
            - docker_templates
        skip_keys:
            - console_bridge
            - fastcdr
            - fastrtps
            - libopensplice67
            - libopensplice69
            - osrf_testing_tools_cpp
            - poco_vendor
            - rmw_connext_cpp
            - rosidl_typesupport_connext_c
            - rosidl_typesupport_connext_cpp
            - rti-connext-dds-5.3.1
            - tinyxml_vendor
            - tinyxml2_vendor
            - urdfdom
            - urdfdom_headers
        ros2_binary_url: https://ci.ros2.org/view/packaging/job/packaging_linux/lastSuccessfulBuild/artifact/ws/ros2-package-linux-x86_64.tar.bz2
